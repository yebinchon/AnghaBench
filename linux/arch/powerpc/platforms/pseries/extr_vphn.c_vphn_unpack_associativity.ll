; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vphn.c_vphn_unpack_associativity.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vphn.c_vphn_unpack_associativity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VPHN_REGISTER_COUNT = common dso_local global i32 0, align 4
@VPHN_ASSOC_BUFSIZE = common dso_local global i32 0, align 4
@VPHN_FIELD_MASK = common dso_local global i32 0, align 4
@VPHN_FIELD_MSB = common dso_local global i32 0, align 4
@VPHN_FIELD_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*)* @vphn_unpack_associativity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vphn_unpack_associativity(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @VPHN_REGISTER_COUNT, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32* %16, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @VPHN_REGISTER_COUNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i64*, i64** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @cpu_to_be64(i64 %26)
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %16, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %17

34:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %79, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @VPHN_ASSOC_BUFSIZE, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %82

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %9, align 8
  %42 = ptrtoint i32* %40 to i32
  %43 = call i32 @be16_to_cpup(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 16
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @cpu_to_be32(i32 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  store i32 0, i32* %11, align 4
  br label %78

57:                                               ; preds = %39
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 65535
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %82

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 32768
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %66, -32769
  %68 = call i32 @cpu_to_be32(i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  br label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %76

76:                                               ; preds = %74, %65
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %46
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %35

82:                                               ; preds = %60, %35
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @cpu_to_be32(i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %88)
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpu_to_be64(i64) #2

declare dso_local i32 @be16_to_cpup(i32) #2

declare dso_local i32 @cpu_to_be32(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
