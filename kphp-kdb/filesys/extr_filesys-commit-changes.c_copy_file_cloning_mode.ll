; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_copy_file_cloning_mode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-commit-changes.c_copy_file_cloning_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@tmp_dir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%m\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"mkdir (%s, %d) failed. %m\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"open (%s, %d, %d) fail. %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%d bytes of %d was written to %s. %m\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"closing %s failed. %m\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"lcopy_attrs returns error code %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stat*, i8*, i8*, i32, i32)* @copy_file_cloning_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_file_cloning_mode(%struct.stat* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = load i8*, i8** @tmp_dir, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @snprintf(i8* %22, i32 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

30:                                               ; preds = %5
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %105, label %33

33:                                               ; preds = %30
  %34 = load %struct.stat*, %struct.stat** %7, align 8
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISLNK(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = call i32 @unlink(i8* %22)
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @symlink(i8* %41, i8* %22)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 -7, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

46:                                               ; preds = %39
  br label %104

47:                                               ; preds = %33
  %48 = load %struct.stat*, %struct.stat** %7, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @S_ISDIR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = load %struct.stat*, %struct.stat** %7, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @mkdir(i8* %22, i32 %56)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load %struct.stat*, %struct.stat** %7, align 8
  %61 = getelementptr inbounds %struct.stat, %struct.stat* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %22, i32 %62)
  store i32 -6, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

64:                                               ; preds = %53
  br label %103

65:                                               ; preds = %47
  %66 = load i32, i32* @O_CREAT, align 4
  %67 = load i32, i32* @O_TRUNC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @O_WRONLY, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.stat*, %struct.stat** %7, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @open(i8* %22, i32 %71, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load i32, i32* %15, align 4
  %80 = load %struct.stat*, %struct.stat** %7, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %22, i32 %79, i32 %82)
  store i32 -2, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

84:                                               ; preds = %65
  %85 = load i32, i32* %16, align 4
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @write(i32 %85, i8* %86, i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %94, i8* %22)
  store i32 -3, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

96:                                               ; preds = %84
  %97 = load i32, i32* %16, align 4
  %98 = call i64 @close(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %22)
  store i32 -4, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

102:                                              ; preds = %96
  br label %103

103:                                              ; preds = %102, %64
  br label %104

104:                                              ; preds = %103, %46
  br label %105

105:                                              ; preds = %104, %30
  %106 = load %struct.stat*, %struct.stat** %7, align 8
  %107 = call i32 @lcopy_attrs(i8* %22, %struct.stat* %106)
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i32, i32* %18, align 4
  %112 = call i32 (i32, i8*, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  store i32 -5, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

113:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %114

114:                                              ; preds = %113, %110, %100, %92, %78, %59, %44, %29
  %115 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @S_ISLNK(i32) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i64 @symlink(i8*, i8*) #2

declare dso_local i32 @vkprintf(i32, i8*, ...) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @lcopy_attrs(i8*, %struct.stat*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
