; ModuleID = '/home/carl/AnghaBench/htop/linux/extr_LinuxProcessList.c_LinuxProcessList_readCmdlineFile.c'
source_filename = "/home/carl/AnghaBench/htop/linux/extr_LinuxProcessList.c_LinuxProcessList_readCmdlineFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s/%s/cmdline\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8*)* @LinuxProcessList_readCmdlineFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LinuxProcessList_readCmdlineFile(%struct.TYPE_5__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4097 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load i32, i32* @MAX_NAME, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  %22 = load i32, i32* @MAX_NAME, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @xSnprintf(i8* %21, i32 %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24)
  %26 = load i32, i32* @O_RDONLY, align 4
  %27 = call i32 @open(i8* %21, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %100

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i64 0, i64 0
  %34 = call i32 @xread(i32 %32, i8* %33, i32 4096)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @close(i32 %35)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = bitcast %struct.TYPE_5__* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %100

43:                                               ; preds = %31
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %100

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %79, %48
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %76

67:                                               ; preds = %60, %53
  %68 = load i32, i32* %14, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %16, align 4
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i64 0, i64 %74
  store i8 32, i8* %75, align 1
  br label %78

76:                                               ; preds = %60
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  br label %49

82:                                               ; preds = %49
  %83 = load i32, i32* %14, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i64 0, i64 %90
  store i8 0, i8* %91, align 1
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds [4097 x i8], [4097 x i8]* %12, i64 0, i64 0
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i32 @setCommand(%struct.TYPE_5__* %95, i8* %96, i32 %98)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %100

100:                                              ; preds = %87, %46, %39, %30
  %101 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @xread(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @setCommand(%struct.TYPE_5__*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
