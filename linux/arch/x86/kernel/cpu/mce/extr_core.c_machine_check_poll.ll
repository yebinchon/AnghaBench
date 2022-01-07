; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_machine_check_poll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_machine_check_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32)* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mce_bank = type { i32 }
%struct.mce = type { i32, i32, i32, i64, i64, i32 }

@mce_banks_array = common dso_local global i32 0, align 4
@mce_poll_count = common dso_local global i32 0, align 4
@MCP_TIMESTAMP = common dso_local global i32 0, align 4
@mce_num_banks = common dso_local global i32 0, align 4
@msr_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@MCI_STATUS_VAL = common dso_local global i32 0, align 4
@MCP_UC = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@mca_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@MCI_STATUS_EN = common dso_local global i32 0, align 4
@MCI_STATUS_PCC = common dso_local global i32 0, align 4
@MCI_STATUS_S = common dso_local global i32 0, align 4
@MCP_DONTLOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine_check_poll(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mce_bank*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mce, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @mce_banks_array, align 4
  %10 = call %struct.mce_bank* @this_cpu_ptr(i32 %9)
  store %struct.mce_bank* %10, %struct.mce_bank** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @mce_poll_count, align 4
  %12 = call i32 @this_cpu_inc(i32 %11)
  %13 = call i32 @mce_gather_info(%struct.mce* %7, i32* null)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MCP_TIMESTAMP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = call i32 (...) @rdtsc()
  %20 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  br label %21

21:                                               ; preds = %18, %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %133, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @mce_num_banks, align 4
  %25 = call i32 @this_cpu_read(i32 %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %136

27:                                               ; preds = %22
  %28 = load %struct.mce_bank*, %struct.mce_bank** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %28, i64 %30
  %32 = getelementptr inbounds %struct.mce_bank, %struct.mce_bank* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @test_bit(i32 %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %27
  br label %133

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = call i32 (...) @barrier()
  %48 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 0), align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 %48(i32 %49)
  %51 = call i32 @mce_rdmsrl(i32 %50)
  %52 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MCI_STATUS_VAL, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  br label %133

59:                                               ; preds = %42
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @MCP_UC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MCI_STATUS_UC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64, %59
  br label %103

71:                                               ; preds = %64
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mca_cfg, i32 0, i32 2), align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MCI_STATUS_UC, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %133

81:                                               ; preds = %74
  br label %103

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MCI_STATUS_EN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %103

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @MCI_STATUS_PCC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MCI_STATUS_S, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %103

102:                                              ; preds = %95, %89
  br label %133

103:                                              ; preds = %101, %88, %81, %70
  store i32 1, i32* %6, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @mce_read_aux(%struct.mce* %7, i32 %104)
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mca_cfg, i32 0, i32 1), align 4
  %107 = call i32 @mce_severity(%struct.mce* %7, i32 %106, i32* null, i32 0)
  %108 = getelementptr inbounds %struct.mce, %struct.mce* %7, i32 0, i32 2
  store i32 %107, i32* %108, align 8
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* @MCP_DONTLOG, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %103
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @mca_cfg, i32 0, i32 0), align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = call i32 @mce_log(%struct.mce* %7)
  br label %128

118:                                              ; preds = %113, %103
  %119 = call i64 @mce_usable_address(%struct.mce* %7)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = call i32 @mce_gen_pool_add(%struct.mce* %7)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call i32 (...) @mce_schedule_work()
  br label %126

126:                                              ; preds = %124, %121
  br label %127

127:                                              ; preds = %126, %118
  br label %128

128:                                              ; preds = %127, %116
  %129 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @msr_ops, i32 0, i32 0), align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 %129(i32 %130)
  %132 = call i32 @mce_wrmsrl(i32 %131, i32 0)
  br label %133

133:                                              ; preds = %128, %102, %80, %58, %41
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %22

136:                                              ; preds = %22
  %137 = call i32 (...) @sync_core()
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local %struct.mce_bank* @this_cpu_ptr(i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @mce_gather_info(%struct.mce*, i32*) #1

declare dso_local i32 @rdtsc(...) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @mce_rdmsrl(i32) #1

declare dso_local i32 @mce_read_aux(%struct.mce*, i32) #1

declare dso_local i32 @mce_severity(%struct.mce*, i32, i32*, i32) #1

declare dso_local i32 @mce_log(%struct.mce*) #1

declare dso_local i64 @mce_usable_address(%struct.mce*) #1

declare dso_local i32 @mce_gen_pool_add(%struct.mce*) #1

declare dso_local i32 @mce_schedule_work(...) #1

declare dso_local i32 @mce_wrmsrl(i32, i32) #1

declare dso_local i32 @sync_core(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
