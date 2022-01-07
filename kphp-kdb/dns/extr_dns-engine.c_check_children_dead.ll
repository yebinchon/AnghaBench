; ModuleID = '/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_check_children_dead.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/dns/extr_dns-engine.c_check_children_dead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@workers = common dso_local global i32 0, align 4
@pids = common dso_local global i32* null, align 8
@WNOHANG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SIGKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"WARNING: %d children unfinished --> they are now killed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_children_dead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_children_dead() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %86, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 11
  br i1 %8, label %9, label %89

9:                                                ; preds = %6
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %72, %9
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @workers, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %75

14:                                               ; preds = %10
  %15 = load i32*, i32** @pids, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  %22 = load i32*, i32** @pids, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WNOHANG, align 4
  %28 = call i32 @waitpid(i32 %26, i32* %3, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** @pids, align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %29, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %21
  %37 = load i32, i32* %3, align 4
  %38 = call i64 @WIFEXITED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @WIFSIGNALED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40, %36
  %45 = load i32*, i32** @pids, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 0, i32* %48, align 4
  br label %50

49:                                               ; preds = %40
  br label %75

50:                                               ; preds = %44
  br label %70

51:                                               ; preds = %21
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %75

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @errno, align 8
  %60 = load i64, i64* @EINTR, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58, %55
  %63 = load i32*, i32** @pids, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 0, i32* %66, align 4
  br label %68

67:                                               ; preds = %58
  br label %75

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %14
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %1, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %1, align 4
  br label %10

75:                                               ; preds = %67, %54, %49, %10
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* @workers, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %89

80:                                               ; preds = %75
  %81 = load i32, i32* %2, align 4
  %82 = icmp slt i32 %81, 10
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 @usleep(i32 100000)
  br label %85

85:                                               ; preds = %83, %80
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %2, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %2, align 4
  br label %6

89:                                               ; preds = %79, %6
  %90 = load i32, i32* %2, align 4
  %91 = icmp eq i32 %90, 11
  br i1 %91, label %92, label %121

92:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %115, %92
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @workers, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = load i32*, i32** @pids, align 8
  %99 = load i32, i32* %1, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %97
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** @pids, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SIGKILL, align 4
  %113 = call i32 @kill(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %104, %97
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %1, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %1, align 4
  br label %93

118:                                              ; preds = %93
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %89
  ret void
}

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
