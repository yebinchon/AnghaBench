; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_log_11_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_log_11_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32, i32, i32 }

@LEV_LI_SET_ENTRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_11_set(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call %struct.lev_generic* @write_alloc(i32 16)
  store %struct.lev_generic* %10, %struct.lev_generic** %9, align 8
  %11 = load i32, i32* @LEV_LI_SET_ENTRY, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add i32 %11, %12
  %14 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %15 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %18 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %21 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.lev_generic*, %struct.lev_generic** %9, align 8
  %24 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local %struct.lev_generic* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
