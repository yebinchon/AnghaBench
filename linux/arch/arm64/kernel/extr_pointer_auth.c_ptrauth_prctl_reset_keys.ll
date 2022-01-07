; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_pointer_auth.c_ptrauth_prctl_reset_keys.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_pointer_auth.c_ptrauth_prctl_reset_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ptrauth_keys }
%struct.ptrauth_keys = type { i32, i32, i32, i32, i32 }

@PR_PAC_APIAKEY = common dso_local global i64 0, align 8
@PR_PAC_APIBKEY = common dso_local global i64 0, align 8
@PR_PAC_APDAKEY = common dso_local global i64 0, align 8
@PR_PAC_APDBKEY = common dso_local global i64 0, align 8
@PR_PAC_APGAKEY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrauth_prctl_reset_keys(%struct.task_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ptrauth_keys*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.ptrauth_keys* %11, %struct.ptrauth_keys** %6, align 8
  %12 = load i64, i64* @PR_PAC_APIAKEY, align 8
  %13 = load i64, i64* @PR_PAC_APIBKEY, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @PR_PAC_APDAKEY, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @PR_PAC_APDBKEY, align 8
  %18 = or i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @PR_PAC_APGAKEY, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = call i32 (...) @system_supports_address_auth()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = call i32 (...) @system_supports_generic_auth()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %114

30:                                               ; preds = %24, %2
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %35 = call i32 @ptrauth_keys_init(%struct.ptrauth_keys* %34)
  %36 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %37 = call i32 @ptrauth_keys_switch(%struct.ptrauth_keys* %36)
  store i32 0, i32* %3, align 4
  br label %114

38:                                               ; preds = %30
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %114

47:                                               ; preds = %38
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %7, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = call i32 (...) @system_supports_address_auth()
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52, %47
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @PR_PAC_APGAKEY, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = call i32 (...) @system_supports_generic_auth()
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60, %52
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %60, %55
  %67 = load i64, i64* %5, align 8
  %68 = load i64, i64* @PR_PAC_APIAKEY, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %73 = getelementptr inbounds %struct.ptrauth_keys, %struct.ptrauth_keys* %72, i32 0, i32 4
  %74 = call i32 @get_random_bytes(i32* %73, i32 4)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @PR_PAC_APIBKEY, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %82 = getelementptr inbounds %struct.ptrauth_keys, %struct.ptrauth_keys* %81, i32 0, i32 3
  %83 = call i32 @get_random_bytes(i32* %82, i32 4)
  br label %84

84:                                               ; preds = %80, %75
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @PR_PAC_APDAKEY, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %91 = getelementptr inbounds %struct.ptrauth_keys, %struct.ptrauth_keys* %90, i32 0, i32 2
  %92 = call i32 @get_random_bytes(i32* %91, i32 4)
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i64, i64* %5, align 8
  %95 = load i64, i64* @PR_PAC_APDBKEY, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %100 = getelementptr inbounds %struct.ptrauth_keys, %struct.ptrauth_keys* %99, i32 0, i32 1
  %101 = call i32 @get_random_bytes(i32* %100, i32 4)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load i64, i64* %5, align 8
  %104 = load i64, i64* @PR_PAC_APGAKEY, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %109 = getelementptr inbounds %struct.ptrauth_keys, %struct.ptrauth_keys* %108, i32 0, i32 0
  %110 = call i32 @get_random_bytes(i32* %109, i32 4)
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.ptrauth_keys*, %struct.ptrauth_keys** %6, align 8
  %113 = call i32 @ptrauth_keys_switch(%struct.ptrauth_keys* %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %111, %63, %44, %33, %27
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @system_supports_address_auth(...) #1

declare dso_local i32 @system_supports_generic_auth(...) #1

declare dso_local i32 @ptrauth_keys_init(%struct.ptrauth_keys*) #1

declare dso_local i32 @ptrauth_keys_switch(%struct.ptrauth_keys*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
