; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_ioport_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_ioport_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.kvm_pit = type { %struct.kvm_kpit_state }
%struct.kvm_kpit_state = type { i32, %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32, i32, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_PIT_CHANNEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32, i8*)* @pit_ioport_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_ioport_read(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_io_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.kvm_pit*, align 8
  %13 = alloca %struct.kvm_kpit_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.kvm_kpit_channel_state*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.kvm_io_device*, %struct.kvm_io_device** %8, align 8
  %18 = call %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device* %17)
  store %struct.kvm_pit* %18, %struct.kvm_pit** %12, align 8
  %19 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %20 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %19, i32 0, i32 0
  store %struct.kvm_kpit_state* %20, %struct.kvm_kpit_state** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @pit_in_range(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %136

27:                                               ; preds = %5
  %28 = load i32, i32* @KVM_PIT_CHANNEL_MASK, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %136

34:                                               ; preds = %27
  %35 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %36 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %35, i32 0, i32 1
  %37 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %37, i64 %39
  store %struct.kvm_kpit_channel_state* %40, %struct.kvm_kpit_channel_state** %16, align 8
  %41 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %42 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %45 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %34
  %49 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %50 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %52 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %14, align 4
  br label %123

54:                                               ; preds = %34
  %55 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %56 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %54
  %60 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %61 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %63 [
    i32 131, label %64
    i32 130, label %71
    i32 129, label %78
  ]

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %59, %63
  %65 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %66 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 255
  store i32 %68, i32* %14, align 4
  %69 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %70 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  br label %85

71:                                               ; preds = %59
  %72 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %73 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = ashr i32 %74, 8
  store i32 %75, i32* %14, align 4
  %76 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %77 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %76, i32 0, i32 1
  store i32 0, i32* %77, align 4
  br label %85

78:                                               ; preds = %59
  %79 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %80 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 255
  store i32 %82, i32* %14, align 4
  %83 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %84 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %83, i32 0, i32 1
  store i32 130, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %71, %64
  br label %122

86:                                               ; preds = %54
  %87 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %88 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %90 [
    i32 131, label %91
    i32 130, label %97
    i32 129, label %104
    i32 128, label %112
  ]

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %86, %90
  %92 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @pit_get_count(%struct.kvm_pit* %92, i32 %93)
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %15, align 4
  %96 = and i32 %95, 255
  store i32 %96, i32* %14, align 4
  br label %121

97:                                               ; preds = %86
  %98 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @pit_get_count(%struct.kvm_pit* %98, i32 %99)
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  store i32 %103, i32* %14, align 4
  br label %121

104:                                              ; preds = %86
  %105 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @pit_get_count(%struct.kvm_pit* %105, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = and i32 %108, 255
  store i32 %109, i32* %14, align 4
  %110 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %111 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %110, i32 0, i32 3
  store i32 128, i32* %111, align 4
  br label %121

112:                                              ; preds = %86
  %113 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @pit_get_count(%struct.kvm_pit* %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  store i32 %118, i32* %14, align 4
  %119 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %120 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %119, i32 0, i32 3
  store i32 129, i32* %120, align 4
  br label %121

121:                                              ; preds = %112, %104, %97, %91
  br label %122

122:                                              ; preds = %121, %85
  br label %123

123:                                              ; preds = %122, %48
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ugt i64 %125, 4
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 4, i32* %10, align 4
  br label %128

128:                                              ; preds = %127, %123
  %129 = load i8*, i8** %11, align 8
  %130 = bitcast i32* %14 to i8*
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @memcpy(i8* %129, i8* %130, i32 %131)
  %133 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %134 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %133, i32 0, i32 0
  %135 = call i32 @mutex_unlock(i32* %134)
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %128, %33, %24
  %137 = load i32, i32* %6, align 4
  ret i32 %137
}

declare dso_local %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device*) #1

declare dso_local i32 @pit_in_range(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pit_get_count(%struct.kvm_pit*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
