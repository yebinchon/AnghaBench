; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_pbm_strbuf_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci_schizo.c_schizo_pbm_strbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i64, i32, i64, i32*, i64, i64, i64, i64 }

@PBM_CHIP_TYPE_TOMATILLO = common dso_local global i64 0, align 8
@SCHIZO_STRBUF_CONTROL = common dso_local global i64 0, align 8
@SCHIZO_STRBUF_FLUSH = common dso_local global i64 0, align 8
@SCHIZO_STRBUF_FSYNC = common dso_local global i64 0, align 8
@SCHIZO_STRBUF_CTXFLUSH = common dso_local global i64 0, align 8
@SCHIZO_STRBUF_CTXMATCH = common dso_local global i64 0, align 8
@SCHIZO_STRBUF_CTRL_LPTR = common dso_local global i32 0, align 4
@SCHIZO_STRBUF_CTRL_LENAB = common dso_local global i32 0, align 4
@SCHIZO_STRBUF_CTRL_DENAB = common dso_local global i32 0, align 4
@SCHIZO_STRBUF_CTRL_ENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*)* @schizo_pbm_strbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @schizo_pbm_strbuf_init(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca %struct.pci_pbm_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %2, align 8
  %5 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %6 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %9 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PBM_CHIP_TYPE_TOMATILLO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %90

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @SCHIZO_STRBUF_CONTROL, align 8
  %17 = add i64 %15, %16
  %18 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %19 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i64 %17, i64* %20, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @SCHIZO_STRBUF_FLUSH, align 8
  %23 = add i64 %21, %22
  %24 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %25 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 8
  store i64 %23, i64* %26, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @SCHIZO_STRBUF_FSYNC, align 8
  %29 = add i64 %27, %28
  %30 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %31 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 7
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @SCHIZO_STRBUF_CTXFLUSH, align 8
  %35 = add i64 %33, %34
  %36 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %37 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i64 %35, i64* %38, align 8
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @SCHIZO_STRBUF_CTXMATCH, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %43 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 5
  store i64 %41, i64* %44, align 8
  %45 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %46 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = ptrtoint i32* %49 to i64
  %51 = add i64 %50, 63
  %52 = and i64 %51, -64
  %53 = inttoptr i64 %52 to i64*
  %54 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %55 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i64* %53, i64** %56, align 8
  %57 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %58 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = call i64 @__pa(i64* %60)
  %62 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %63 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  %65 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %66 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @upa_readq(i64 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @SCHIZO_STRBUF_CTRL_LPTR, align 4
  %71 = load i32, i32* @SCHIZO_STRBUF_CTRL_LENAB, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SCHIZO_STRBUF_CTRL_DENAB, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @SCHIZO_STRBUF_CTRL_ENAB, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %83 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @upa_writeq(i32 %81, i64 %85)
  %87 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %2, align 8
  %88 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %14, %13
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
