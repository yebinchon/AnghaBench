; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754d.c_ieee754dp_dump.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_ieee754d.c_ieee754dp_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754dp = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"<%08x,%08x>\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\09=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Nan %c\00", align 1
@DP_FBITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%cInfinity\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%cZero\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%c0.\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"e%d\00", align 1
@DP_EBIAS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"%c1.\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Illegal/Unknown IEEE754 value class\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754dp_dump(i8* %0, i32 %1) #0 {
  %3 = alloca %union.ieee754dp, align 4
  %4 = alloca %union.ieee754dp, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store i8* %0, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = bitcast %union.ieee754dp* %4 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 32
  %13 = bitcast %union.ieee754dp* %4 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %14)
  %16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %17 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ieee754dp_class(i32 %18)
  switch i32 %19, label %132 [
    i32 130, label %20
    i32 129, label %20
    i32 132, label %48
    i32 128, label %56
    i32 133, label %64
    i32 131, label %98
  ]

20:                                               ; preds = %2, %2
  %21 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DPSIGN(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 45, i32 43
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @DP_FBITS, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %44, %20
  %31 = load i32, i32* %6, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DPMANT(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @DP_MBIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 49, i32 48
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %6, align 4
  br label %30

47:                                               ; preds = %30
  br label %134

48:                                               ; preds = %2
  %49 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DPSIGN(i32 %50)
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 45, i32 43
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %134

56:                                               ; preds = %2
  %57 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DPSIGN(i32 %58)
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 45, i32 43
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  br label %134

64:                                               ; preds = %2
  %65 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DPSIGN(i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 45, i32 43
  %71 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @DP_FBITS, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %88, %64
  %75 = load i32, i32* %6, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DPMANT(i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @DP_MBIT(i32 %81)
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 49, i32 48
  %87 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %74

91:                                               ; preds = %74
  %92 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @DPBEXP(i32 %93)
  %95 = load i64, i64* @DP_EBIAS, align 8
  %96 = sub nsw i64 %94, %95
  %97 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %96)
  br label %134

98:                                               ; preds = %2
  %99 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @DPSIGN(i32 %100)
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 45, i32 43
  %105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @DP_FBITS, align 4
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %122, %98
  %109 = load i32, i32* %6, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @DPMANT(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @DP_MBIT(i32 %115)
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 49, i32 48
  %121 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %111
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %6, align 4
  br label %108

125:                                              ; preds = %108
  %126 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %4, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @DPBEXP(i32 %127)
  %129 = load i64, i64* @DP_EBIAS, align 8
  %130 = sub nsw i64 %128, %129
  %131 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64 %130)
  br label %134

132:                                              ; preds = %2
  %133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %125, %91, %56, %48, %47
  %135 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %136 = bitcast %union.ieee754dp* %3 to i8*
  %137 = bitcast %union.ieee754dp* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %136, i8* align 4 %137, i64 4, i1 false)
  %138 = getelementptr inbounds %union.ieee754dp, %union.ieee754dp* %3, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  ret i32 %139
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ieee754dp_class(i32) #1

declare dso_local i32 @DPSIGN(i32) #1

declare dso_local i32 @DPMANT(i32) #1

declare dso_local i32 @DP_MBIT(i32) #1

declare dso_local i64 @DPBEXP(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
