; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c_handle_sigp_dst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_sigp.c_handle_sigp_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SIGP_CC_NOT_OPERATIONAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"sigp order %u -> cpu %x: handled in user space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32, i32*)* @handle_sigp_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_sigp_dst(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.kvm_vcpu* @kvm_get_vcpu_by_id(i32 %16, i32 %17)
  store %struct.kvm_vcpu* %18, %struct.kvm_vcpu** %13, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %20 = icmp ne %struct.kvm_vcpu* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @SIGP_CC_NOT_OPERATIONAL, align 4
  store i32 %22, i32* %6, align 4
  br label %179

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %156 [
    i32 134, label %25
    i32 137, label %35
    i32 138, label %45
    i32 130, label %54
    i32 129, label %63
    i32 128, label %73
    i32 132, label %84
    i32 140, label %95
    i32 133, label %106
    i32 131, label %116
    i32 135, label %126
    i32 136, label %136
    i32 139, label %146
  ]

25:                                               ; preds = %23
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @__sigp_sense(%struct.kvm_vcpu* %31, %struct.kvm_vcpu* %32, i32* %33)
  store i32 %34, i32* %12, align 4
  br label %165

35:                                               ; preds = %23
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @__sigp_external_call(%struct.kvm_vcpu* %41, %struct.kvm_vcpu* %42, i32* %43)
  store i32 %44, i32* %12, align 4
  br label %165

45:                                               ; preds = %23
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %53 = call i32 @__sigp_emergency(%struct.kvm_vcpu* %51, %struct.kvm_vcpu* %52)
  store i32 %53, i32* %12, align 4
  br label %165

54:                                               ; preds = %23
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %62 = call i32 @__sigp_stop(%struct.kvm_vcpu* %60, %struct.kvm_vcpu* %61)
  store i32 %62, i32* %12, align 4
  br label %165

63:                                               ; preds = %23
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @__sigp_stop_and_store_status(%struct.kvm_vcpu* %69, %struct.kvm_vcpu* %70, i32* %71)
  store i32 %72, i32* %12, align 4
  br label %165

73:                                               ; preds = %23
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @__sigp_store_status_at_addr(%struct.kvm_vcpu* %79, %struct.kvm_vcpu* %80, i32 %81, i32* %82)
  store i32 %83, i32* %12, align 4
  br label %165

84:                                               ; preds = %23
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @__sigp_set_prefix(%struct.kvm_vcpu* %90, %struct.kvm_vcpu* %91, i32 %92, i32* %93)
  store i32 %94, i32* %12, align 4
  br label %165

95:                                               ; preds = %23
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @__sigp_conditional_emergency(%struct.kvm_vcpu* %101, %struct.kvm_vcpu* %102, i32 %103, i32* %104)
  store i32 %105, i32* %12, align 4
  br label %165

106:                                              ; preds = %23
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %108 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %113 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @__sigp_sense_running(%struct.kvm_vcpu* %112, %struct.kvm_vcpu* %113, i32* %114)
  store i32 %115, i32* %12, align 4
  br label %165

116:                                              ; preds = %23
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @__prepare_sigp_re_start(%struct.kvm_vcpu* %122, %struct.kvm_vcpu* %123, i32 %124)
  store i32 %125, i32* %12, align 4
  br label %165

126:                                              ; preds = %23
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @__prepare_sigp_re_start(%struct.kvm_vcpu* %132, %struct.kvm_vcpu* %133, i32 %134)
  store i32 %135, i32* %12, align 4
  br label %165

136:                                              ; preds = %23
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @__prepare_sigp_cpu_reset(%struct.kvm_vcpu* %142, %struct.kvm_vcpu* %143, i32 %144)
  store i32 %145, i32* %12, align 4
  br label %165

146:                                              ; preds = %23
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @__prepare_sigp_cpu_reset(%struct.kvm_vcpu* %152, %struct.kvm_vcpu* %153, i32 %154)
  store i32 %155, i32* %12, align 4
  br label %165

156:                                              ; preds = %23
  %157 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %158 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %164 = call i32 @__prepare_sigp_unknown(%struct.kvm_vcpu* %162, %struct.kvm_vcpu* %163)
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %156, %146, %136, %126, %116, %106, %95, %84, %73, %63, %54, %45, %35, %25
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @EOPNOTSUPP, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  %174 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @VCPU_EVENT(%struct.kvm_vcpu* %171, i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %170, %165
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %177, %21
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu_by_id(i32, i32) #1

declare dso_local i32 @__sigp_sense(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @__sigp_external_call(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @__sigp_emergency(%struct.kvm_vcpu*, %struct.kvm_vcpu*) #1

declare dso_local i32 @__sigp_stop(%struct.kvm_vcpu*, %struct.kvm_vcpu*) #1

declare dso_local i32 @__sigp_stop_and_store_status(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @__sigp_store_status_at_addr(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @__sigp_set_prefix(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @__sigp_conditional_emergency(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i32 @__sigp_sense_running(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @__prepare_sigp_re_start(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__prepare_sigp_cpu_reset(%struct.kvm_vcpu*, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__prepare_sigp_unknown(%struct.kvm_vcpu*, %struct.kvm_vcpu*) #1

declare dso_local i32 @VCPU_EVENT(%struct.kvm_vcpu*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
