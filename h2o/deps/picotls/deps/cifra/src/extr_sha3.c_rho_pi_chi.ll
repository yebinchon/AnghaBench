; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_sha3.c_rho_pi_chi.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/extr_sha3.c_rho_pi_chi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@rotation_constants = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @rho_pi_chi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rho_pi_chi(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca [5 x [5 x %struct.TYPE_9__]], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %10 = bitcast [5 x [5 x %struct.TYPE_9__]]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 300, i1 false)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 5
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %49, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x [5 x %struct.TYPE_9__]], [5 x [5 x %struct.TYPE_9__]]* %3, i64 0, i64 %20
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 3, %24
  %26 = add nsw i32 %23, %25
  %27 = call i64 @MOD5(i32 %26)
  %28 = getelementptr inbounds [5 x %struct.TYPE_9__], [5 x %struct.TYPE_9__]* %21, i64 0, i64 %27
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %31, i64 %33
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i64 %37
  %39 = load i32**, i32*** @rotation_constants, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rotl_bi_n(%struct.TYPE_9__* %28, %struct.TYPE_10__* %38, i32 %47)
  br label %49

49:                                               ; preds = %18
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %15

52:                                               ; preds = %15
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %11

56:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %153, %56
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %156

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i64 @MOD5(i32 %62)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i64 @MOD5(i32 %66)
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %149, %60
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 5
  br i1 %71, label %72, label %152

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [5 x [5 x %struct.TYPE_9__]], [5 x [5 x %struct.TYPE_9__]]* %3, i64 0, i64 %74
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [5 x %struct.TYPE_9__], [5 x %struct.TYPE_9__]* %75, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [5 x [5 x %struct.TYPE_9__]], [5 x [5 x %struct.TYPE_9__]]* %3, i64 0, i64 %82
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x %struct.TYPE_9__], [5 x %struct.TYPE_9__]* %83, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [5 x [5 x %struct.TYPE_9__]], [5 x [5 x %struct.TYPE_9__]]* %3, i64 0, i64 %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [5 x %struct.TYPE_9__], [5 x %struct.TYPE_9__]* %92, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %89, %97
  %99 = xor i32 %80, %98
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %102, i64 %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %99, i32* %110, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [5 x [5 x %struct.TYPE_9__]], [5 x [5 x %struct.TYPE_9__]]* %3, i64 0, i64 %112
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [5 x %struct.TYPE_9__], [5 x %struct.TYPE_9__]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [5 x [5 x %struct.TYPE_9__]], [5 x [5 x %struct.TYPE_9__]]* %3, i64 0, i64 %120
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [5 x %struct.TYPE_9__], [5 x %struct.TYPE_9__]* %121, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %8, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [5 x [5 x %struct.TYPE_9__]], [5 x [5 x %struct.TYPE_9__]]* %3, i64 0, i64 %129
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [5 x %struct.TYPE_9__], [5 x %struct.TYPE_9__]* %130, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %127, %135
  %137 = xor i32 %118, %136
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %139, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %140, i64 %142
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  store i32 %137, i32* %148, align 4
  br label %149

149:                                              ; preds = %72
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %69

152:                                              ; preds = %69
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %57

156:                                              ; preds = %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rotl_bi_n(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #2

declare dso_local i64 @MOD5(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
