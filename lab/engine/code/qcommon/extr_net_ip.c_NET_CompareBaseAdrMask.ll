; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_CompareBaseAdrMask.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_CompareBaseAdrMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@NA_LOOPBACK = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i64 0, align 8
@NA_IP6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"NET_CompareBaseAdr: bad address type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NET_CompareBaseAdrMask(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca %struct.TYPE_4__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_4__* %7 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %1, i64* %16, align 8
  %17 = bitcast %struct.TYPE_4__* %8 to { i64, i64 }*
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  store i64 %2, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  store i64 %3, i64* %19, align 8
  store i32 %4, i32* %9, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %21, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @qfalse, align 4
  store i32 %26, i32* %6, align 4
  br label %116

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NA_LOOPBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @qtrue, align 4
  store i32 %33, i32* %6, align 4
  br label %116

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NA_IP, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32* %40, i32** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store i32* %41, i32** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 32
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %39
  store i32 32, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %68

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @NA_IP6, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32* %55, i32** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32* %56, i32** %12, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 128
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %54
  store i32 128, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %59
  br label %67

64:                                               ; preds = %49
  %65 = call i32 @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @qfalse, align 4
  store i32 %66, i32* %6, align 4
  br label %116

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 3
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @memcmp(i32* %74, i32* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @qfalse, align 4
  store i32 %80, i32* %6, align 4
  br label %116

81:                                               ; preds = %73, %68
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, 7
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 1, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 8, %90
  %92 = load i32, i32* %10, align 4
  %93 = shl i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %98, %99
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %105, %106
  %108 = icmp eq i32 %100, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %86
  %110 = load i32, i32* @qtrue, align 4
  store i32 %110, i32* %6, align 4
  br label %116

111:                                              ; preds = %86
  br label %114

112:                                              ; preds = %81
  %113 = load i32, i32* @qtrue, align 4
  store i32 %113, i32* %6, align 4
  br label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @qfalse, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %114, %112, %109, %79, %64, %32, %25
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
