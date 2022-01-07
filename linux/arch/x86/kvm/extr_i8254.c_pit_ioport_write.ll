; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_ioport_write.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_i8254.c_pit_ioport_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_io_device = type { i32 }
%struct.kvm_pit = type { %struct.kvm_kpit_state }
%struct.kvm_kpit_state = type { i32, %struct.kvm_kpit_channel_state* }
%struct.kvm_kpit_channel_state = type { i32, i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@KVM_PIT_CHANNEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"write addr is 0x%x, len is %d, val is 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_io_device*, i32, i32, i8*)* @pit_ioport_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pit_ioport_write(%struct.kvm_vcpu* %0, %struct.kvm_io_device* %1, i32 %2, i32 %3, i8* %4) #0 {
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
  %17 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_io_device* %1, %struct.kvm_io_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load %struct.kvm_io_device*, %struct.kvm_io_device** %8, align 8
  %19 = call %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device* %18)
  store %struct.kvm_pit* %19, %struct.kvm_pit** %12, align 8
  %20 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %21 = getelementptr inbounds %struct.kvm_pit, %struct.kvm_pit* %20, i32 0, i32 0
  store %struct.kvm_kpit_state* %21, %struct.kvm_kpit_state** %13, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @pit_in_range(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %186

31:                                               ; preds = %5
  %32 = load i32, i32* %17, align 4
  %33 = and i32 %32, 255
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* @KVM_PIT_CHANNEL_MASK, align 4
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %38 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %31
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %141

50:                                               ; preds = %47
  %51 = load i32, i32* %17, align 4
  %52 = ashr i32 %51, 6
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %93

55:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %89, %55
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %92

59:                                               ; preds = %56
  %60 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %61 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %60, i32 0, i32 1
  %62 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %62, i64 %64
  store %struct.kvm_kpit_channel_state* %65, %struct.kvm_kpit_channel_state** %16, align 8
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %14, align 4
  %68 = shl i32 2, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %59
  %72 = load i32, i32* %17, align 4
  %73 = and i32 %72, 32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @pit_latch_count(%struct.kvm_pit* %76, i32 %77)
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %17, align 4
  %81 = and i32 %80, 16
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @pit_latch_status(%struct.kvm_pit* %84, i32 %85)
  br label %87

87:                                               ; preds = %83, %79
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %56

92:                                               ; preds = %56
  br label %140

93:                                               ; preds = %50
  %94 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %95 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %94, i32 0, i32 1
  %96 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %95, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %96, i64 %98
  store %struct.kvm_kpit_channel_state* %99, %struct.kvm_kpit_channel_state** %16, align 8
  %100 = load i32, i32* %17, align 4
  %101 = ashr i32 %100, 4
  %102 = load i32, i32* @KVM_PIT_CHANNEL_MASK, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %93
  %107 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @pit_latch_count(%struct.kvm_pit* %107, i32 %108)
  br label %139

110:                                              ; preds = %93
  %111 = load i32, i32* %15, align 4
  %112 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %113 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %116 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %119 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %17, align 4
  %121 = ashr i32 %120, 1
  %122 = and i32 %121, 7
  %123 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %124 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %123, i32 0, i32 3
  store i32 %122, i32* %124, align 4
  %125 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %126 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %127, 5
  br i1 %128, label %129, label %134

129:                                              ; preds = %110
  %130 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %131 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 4
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %129, %110
  %135 = load i32, i32* %17, align 4
  %136 = and i32 %135, 1
  %137 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %138 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %134, %106
  br label %140

140:                                              ; preds = %139, %92
  br label %182

141:                                              ; preds = %47
  %142 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %143 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %142, i32 0, i32 1
  %144 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %144, i64 %146
  store %struct.kvm_kpit_channel_state* %147, %struct.kvm_kpit_channel_state** %16, align 8
  %148 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %149 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %151 [
    i32 131, label %152
    i32 130, label %157
    i32 129, label %163
    i32 128, label %169
  ]

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %141, %151
  %153 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %17, align 4
  %156 = call i32 @pit_load_count(%struct.kvm_pit* %153, i32 %154, i32 %155)
  br label %181

157:                                              ; preds = %141
  %158 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %17, align 4
  %161 = shl i32 %160, 8
  %162 = call i32 @pit_load_count(%struct.kvm_pit* %158, i32 %159, i32 %161)
  br label %181

163:                                              ; preds = %141
  %164 = load i32, i32* %17, align 4
  %165 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %166 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %168 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %167, i32 0, i32 2
  store i32 128, i32* %168, align 4
  br label %181

169:                                              ; preds = %141
  %170 = load %struct.kvm_pit*, %struct.kvm_pit** %12, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %173 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %17, align 4
  %176 = shl i32 %175, 8
  %177 = or i32 %174, %176
  %178 = call i32 @pit_load_count(%struct.kvm_pit* %170, i32 %171, i32 %177)
  %179 = load %struct.kvm_kpit_channel_state*, %struct.kvm_kpit_channel_state** %16, align 8
  %180 = getelementptr inbounds %struct.kvm_kpit_channel_state, %struct.kvm_kpit_channel_state* %179, i32 0, i32 2
  store i32 129, i32* %180, align 4
  br label %181

181:                                              ; preds = %169, %163, %157, %152
  br label %182

182:                                              ; preds = %181, %140
  %183 = load %struct.kvm_kpit_state*, %struct.kvm_kpit_state** %13, align 8
  %184 = getelementptr inbounds %struct.kvm_kpit_state, %struct.kvm_kpit_state* %183, i32 0, i32 0
  %185 = call i32 @mutex_unlock(i32* %184)
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %182, %28
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local %struct.kvm_pit* @dev_to_pit(%struct.kvm_io_device*) #1

declare dso_local i32 @pit_in_range(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @pit_latch_count(%struct.kvm_pit*, i32) #1

declare dso_local i32 @pit_latch_status(%struct.kvm_pit*, i32) #1

declare dso_local i32 @pit_load_count(%struct.kvm_pit*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
