; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_sqrt.c_ieee754sp_sqrt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_sqrt.c_ieee754sp_sqrt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%union.ieee754sp = type { i32 }

@COMPXSP = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@FLUSHXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@xs = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4
@ieee754_csr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_sqrt(i32 %0) #0 {
  %2 = alloca %union.ieee754sp, align 4
  %3 = alloca %union.ieee754sp, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %3, i32 0, i32 0
  store i32 %0, i32* %11, align 4
  %12 = load i32, i32* @COMPXSP, align 4
  %13 = load i32, i32* @EXPLODEXSP, align 4
  %14 = call i32 (...) @ieee754_clearcx()
  %15 = load i32, i32* @FLUSHXSP, align 4
  %16 = load i32, i32* @xc, align 4
  switch i32 %16, label %48 [
    i32 129, label %17
    i32 130, label %22
    i32 128, label %25
    i32 132, label %28
    i32 133, label %39
    i32 131, label %39
  ]

17:                                               ; preds = %1
  %18 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee754sp_nanxcpt(i32 %19)
  %21 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  br label %144

22:                                               ; preds = %1
  %23 = bitcast %union.ieee754sp* %2 to i8*
  %24 = bitcast %union.ieee754sp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  br label %144

25:                                               ; preds = %1
  %26 = bitcast %union.ieee754sp* %2 to i8*
  %27 = bitcast %union.ieee754sp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  br label %144

28:                                               ; preds = %1
  %29 = load i32, i32* @xs, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %33 = call i32 @ieee754_setcx(i32 %32)
  %34 = call i32 (...) @ieee754sp_indef()
  %35 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %144

36:                                               ; preds = %28
  %37 = bitcast %union.ieee754sp* %2 to i8*
  %38 = bitcast %union.ieee754sp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  br label %144

39:                                               ; preds = %1, %1
  %40 = load i32, i32* @xs, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %44 = call i32 @ieee754_setcx(i32 %43)
  %45 = call i32 (...) @ieee754sp_indef()
  %46 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  br label %144

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %1, %47
  %49 = bitcast %union.ieee754sp* %3 to i32*
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 23
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %63, %55
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, 8388608
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %56

66:                                               ; preds = %56
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %66, %48
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 127
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 8388607
  %76 = or i32 %75, 8388608
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %7, align 4
  %78 = and i32 %77, 1
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 16777216, i32* %10, align 4
  br label %90

90:                                               ; preds = %110, %84
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %94, %95
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %93
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %101, %102
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %100, %93
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %10, align 4
  %115 = lshr i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %90

116:                                              ; preds = %90
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load i32, i32* @IEEE754_INEXACT, align 4
  %121 = call i32 @ieee754_setcx(i32 %120)
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ieee754_csr, i32 0, i32 0), align 4
  switch i32 %122, label %131 [
    i32 134, label %123
    i32 135, label %126
  ]

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %6, align 4
  br label %131

126:                                              ; preds = %119
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, 1
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %119, %126, %123
  br label %132

132:                                              ; preds = %131, %116
  %133 = load i32, i32* %6, align 4
  %134 = ashr i32 %133, 1
  %135 = add nsw i32 %134, 1056964608
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %7, align 4
  %137 = shl i32 %136, 23
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = bitcast %union.ieee754sp* %3 to i32*
  store i32 %140, i32* %141, align 4
  %142 = bitcast %union.ieee754sp* %2 to i8*
  %143 = bitcast %union.ieee754sp* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 4, i1 false)
  br label %144

144:                                              ; preds = %132, %42, %36, %31, %25, %22, %17
  %145 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %2, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  ret i32 %146
}

declare dso_local i32 @ieee754_clearcx(...) #1

declare dso_local i32 @ieee754sp_nanxcpt(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee754_setcx(i32) #1

declare dso_local i32 @ieee754sp_indef(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
