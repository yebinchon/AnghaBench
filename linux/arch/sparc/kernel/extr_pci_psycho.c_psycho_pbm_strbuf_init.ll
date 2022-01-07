; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_psycho.c_psycho_pbm_strbuf_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_psycho.c_psycho_pbm_strbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64, i32, i64, i32*, i64, i64, i64, i64, i64, i64, i64 }

@PSYCHO_STRBUF_CONTROL_A = common dso_local global i64 0, align 8
@PSYCHO_STRBUF_FLUSH_A = common dso_local global i64 0, align 8
@PSYCHO_STRBUF_FSYNC_A = common dso_local global i64 0, align 8
@PSYCHO_STC_ERR_A = common dso_local global i64 0, align 8
@PSYCHO_STC_TAG_A = common dso_local global i64 0, align 8
@PSYCHO_STC_LINE_A = common dso_local global i64 0, align 8
@PSYCHO_STRBUF_CONTROL_B = common dso_local global i64 0, align 8
@PSYCHO_STRBUF_FLUSH_B = common dso_local global i64 0, align 8
@PSYCHO_STRBUF_FSYNC_B = common dso_local global i64 0, align 8
@PSYCHO_STC_ERR_B = common dso_local global i64 0, align 8
@PSYCHO_STC_TAG_B = common dso_local global i64 0, align 8
@PSYCHO_STC_LINE_B = common dso_local global i64 0, align 8
@PSYCHO_STRBUF_CTRL_ENAB = common dso_local global i32 0, align 4
@PSYCHO_STRBUF_CTRL_LENAB = common dso_local global i32 0, align 4
@PSYCHO_STRBUF_CTRL_LPTR = common dso_local global i32 0, align 4
@PSYCHO_STRBUF_CTRL_RRDIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, i32)* @psycho_pbm_strbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psycho_pbm_strbuf_init(%struct.pci_pbm_info* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %8 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PSYCHO_STRBUF_CONTROL_A, align 8
  %15 = add i64 %13, %14
  %16 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %17 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i64 %15, i64* %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @PSYCHO_STRBUF_FLUSH_A, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %23 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 11
  store i64 %21, i64* %24, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @PSYCHO_STRBUF_FSYNC_A, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %29 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 10
  store i64 %27, i64* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @PSYCHO_STC_ERR_A, align 8
  %33 = add i64 %31, %32
  %34 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %35 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 9
  store i64 %33, i64* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @PSYCHO_STC_TAG_A, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %41 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  store i64 %39, i64* %42, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @PSYCHO_STC_LINE_A, align 8
  %45 = add i64 %43, %44
  %46 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %47 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  store i64 %45, i64* %48, align 8
  br label %86

49:                                               ; preds = %2
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @PSYCHO_STRBUF_CONTROL_B, align 8
  %52 = add i64 %50, %51
  %53 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %54 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i64 %52, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @PSYCHO_STRBUF_FLUSH_B, align 8
  %58 = add i64 %56, %57
  %59 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %60 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 11
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* @PSYCHO_STRBUF_FSYNC_B, align 8
  %64 = add i64 %62, %63
  %65 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %66 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 10
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @PSYCHO_STC_ERR_B, align 8
  %70 = add i64 %68, %69
  %71 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %72 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 9
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @PSYCHO_STC_TAG_B, align 8
  %76 = add i64 %74, %75
  %77 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %78 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 8
  store i64 %76, i64* %79, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @PSYCHO_STC_LINE_B, align 8
  %82 = add i64 %80, %81
  %83 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %84 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 7
  store i64 %82, i64* %85, align 8
  br label %86

86:                                               ; preds = %49, %12
  %87 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %88 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  store i64 0, i64* %89, align 8
  %90 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %91 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %94 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = ptrtoint i32* %97 to i64
  %99 = add i64 %98, 63
  %100 = and i64 %99, -64
  %101 = inttoptr i64 %100 to i64*
  %102 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %103 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i64* %101, i64** %104, align 8
  %105 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %106 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = call i64 @__pa(i64* %108)
  %110 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %111 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  store i64 %109, i64* %112, align 8
  %113 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %114 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @upa_readq(i64 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* @PSYCHO_STRBUF_CTRL_ENAB, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @PSYCHO_STRBUF_CTRL_LENAB, align 4
  %122 = load i32, i32* @PSYCHO_STRBUF_CTRL_LPTR, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %129 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @upa_writeq(i32 %127, i64 %131)
  %133 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %134 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  ret void
}

declare dso_local i64 @__pa(i64*) #1

declare dso_local i32 @upa_readq(i64) #1

declare dso_local i32 @upa_writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
