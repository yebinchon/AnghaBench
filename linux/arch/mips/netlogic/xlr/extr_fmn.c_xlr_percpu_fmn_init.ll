; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_fmn.c_xlr_percpu_fmn_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/netlogic/xlr/extr_fmn.c_xlr_percpu_fmn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, %struct.xlr_fmn_info* }
%struct.xlr_fmn_info = type { i32 }

@xlr_board_fmn_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IRQ_FMN = common dso_local global i32 0, align 4
@nlm_threads_per_core = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xlr_percpu_fmn_init() #0 {
  %1 = alloca %struct.xlr_fmn_info*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i64 (...) @nlm_thread_id()
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = call i32 (...) @nlm_core_id()
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xlr_board_fmn_config, i32 0, i32 0), align 8
  store i32* %10, i32** %2, align 8
  %11 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @xlr_board_fmn_config, i32 0, i32 1), align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %11, i64 %13
  store %struct.xlr_fmn_info* %14, %struct.xlr_fmn_info** %1, align 8
  %15 = call i32 (...) @nlm_cop2_enable_irqsave()
  store i32 %15, i32* %3, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 8
  %19 = add nsw i32 %18, 0
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nlm_write_c2_bucksize(i32 0, i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, 8
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nlm_write_c2_bucksize(i32 1, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 8
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nlm_write_c2_bucksize(i32 2, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 %41, 8
  %43 = add nsw i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nlm_write_c2_bucksize(i32 3, i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %49, 8
  %51 = add nsw i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nlm_write_c2_bucksize(i32 4, i32 %54)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %57, 8
  %59 = add nsw i32 %58, 5
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nlm_write_c2_bucksize(i32 5, i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = mul nsw i32 %65, 8
  %67 = add nsw i32 %66, 6
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @nlm_write_c2_bucksize(i32 6, i32 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = mul nsw i32 %73, 8
  %75 = add nsw i32 %74, 7
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @nlm_write_c2_bucksize(i32 7, i32 %78)
  %80 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %81 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @COP2_CC_INIT_CPU_DEST(i32 0, i32 %82)
  %84 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %85 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @COP2_CC_INIT_CPU_DEST(i32 1, i32 %86)
  %88 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %89 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @COP2_CC_INIT_CPU_DEST(i32 2, i32 %90)
  %92 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %93 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @COP2_CC_INIT_CPU_DEST(i32 3, i32 %94)
  %96 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %97 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @COP2_CC_INIT_CPU_DEST(i32 4, i32 %98)
  %100 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %101 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @COP2_CC_INIT_CPU_DEST(i32 5, i32 %102)
  %104 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %105 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @COP2_CC_INIT_CPU_DEST(i32 6, i32 %106)
  %108 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %109 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @COP2_CC_INIT_CPU_DEST(i32 7, i32 %110)
  %112 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %113 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @COP2_CC_INIT_CPU_DEST(i32 8, i32 %114)
  %116 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %117 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @COP2_CC_INIT_CPU_DEST(i32 9, i32 %118)
  %120 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %121 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @COP2_CC_INIT_CPU_DEST(i32 10, i32 %122)
  %124 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %125 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @COP2_CC_INIT_CPU_DEST(i32 11, i32 %126)
  %128 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %129 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @COP2_CC_INIT_CPU_DEST(i32 12, i32 %130)
  %132 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %133 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @COP2_CC_INIT_CPU_DEST(i32 13, i32 %134)
  %136 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %137 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @COP2_CC_INIT_CPU_DEST(i32 14, i32 %138)
  %140 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %1, align 8
  %141 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @COP2_CC_INIT_CPU_DEST(i32 15, i32 %142)
  %144 = load i32, i32* @IRQ_FMN, align 4
  %145 = load i32, i32* @nlm_threads_per_core, align 4
  %146 = shl i32 1, %145
  %147 = sub nsw i32 %146, 1
  %148 = call i32 @nlm_fmn_setup_intr(i32 %144, i32 %147)
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @nlm_cop2_disable_irqrestore(i32 %149)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @nlm_thread_id(...) #1

declare dso_local i32 @nlm_core_id(...) #1

declare dso_local i32 @nlm_cop2_enable_irqsave(...) #1

declare dso_local i32 @nlm_write_c2_bucksize(i32, i32) #1

declare dso_local i32 @COP2_CC_INIT_CPU_DEST(i32, i32) #1

declare dso_local i32 @nlm_fmn_setup_intr(i32, i32) #1

declare dso_local i32 @nlm_cop2_disable_irqrestore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
