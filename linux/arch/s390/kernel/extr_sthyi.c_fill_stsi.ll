; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_stsi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_sthyi.c_fill_stsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sthyi_sctns = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sthyi_sctns*)* @fill_stsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_stsi(%struct.sthyi_sctns* %0) #0 {
  %2 = alloca %struct.sthyi_sctns*, align 8
  %3 = alloca i8*, align 8
  store %struct.sthyi_sctns* %0, %struct.sthyi_sctns** %2, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i64 @__get_free_page(i32 %4)
  %6 = inttoptr i64 %5 to i8*
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @fill_stsi_mac(%struct.sthyi_sctns* %11, i8* %12)
  %14 = load %struct.sthyi_sctns*, %struct.sthyi_sctns** %2, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @fill_stsi_par(%struct.sthyi_sctns* %14, i8* %15)
  %17 = load i8*, i8** %3, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = call i32 @free_pages(i64 %18, i32 0)
  br label %20

20:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @fill_stsi_mac(%struct.sthyi_sctns*, i8*) #1

declare dso_local i32 @fill_stsi_par(%struct.sthyi_sctns*, i8*) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
