; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_rec_delete_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-utils.c_rec_delete_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_4__ = type { i8*, %struct.stat, %struct.TYPE_4__* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unlink (%s) failed. %m\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"rmdir (%s) failed. %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.stat*)* @rec_delete_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rec_delete_file(i8* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.stat*, %struct.stat** %5, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @S_ISLNK(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @unlink(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 -5, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

30:                                               ; preds = %23
  br label %95

31:                                               ; preds = %2
  %32 = load %struct.stat*, %struct.stat** %5, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %88

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strlen(i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @getdir(i8* %40, %struct.TYPE_4__** %10, i32 0, i32 1)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -2, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

45:                                               ; preds = %37
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %11, align 8
  br label %47

47:                                               ; preds = %74, %45
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = add nsw i32 %52, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* @PATH_MAX, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i32 -6, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

62:                                               ; preds = %50
  %63 = load i8*, i8** %4, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = call i32 @rec_delete_file(i8* %17, %struct.stat* %69)
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %62
  store i32 -3, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %11, align 8
  br label %47

78:                                               ; preds = %47
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = call i32 @free_filelist(%struct.TYPE_4__* %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i64 @rmdir(i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @vkprintf(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  store i32 -7, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

87:                                               ; preds = %78
  br label %94

88:                                               ; preds = %31
  %89 = load i8*, i8** %4, align 8
  %90 = call i64 @unlink(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 -4, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %87
  br label %95

95:                                               ; preds = %94, %30
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92, %84, %72, %61, %44, %27
  %97 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @vkprintf(i32, i8*, i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @getdir(i8*, %struct.TYPE_4__**, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @free_filelist(%struct.TYPE_4__*) #2

declare dso_local i64 @rmdir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
