; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_log_x22_set.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-import-dump.c_log_x22_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_generic = type { i32, i32, i32, i32, i32, i64 }

@LEV_LI_SET_ENTRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_x22_set(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8 zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.lev_generic*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8 %5, i8* %12, align 1
  %14 = call %struct.lev_generic* @write_alloc(i32 24)
  store %struct.lev_generic* %14, %struct.lev_generic** %13, align 8
  %15 = load i64, i64* @LEV_LI_SET_ENTRY, align 8
  %16 = load i8, i8* %12, align 1
  %17 = zext i8 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = load %struct.lev_generic*, %struct.lev_generic** %13, align 8
  %20 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %19, i32 0, i32 5
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.lev_generic*, %struct.lev_generic** %13, align 8
  %23 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.lev_generic*, %struct.lev_generic** %13, align 8
  %26 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.lev_generic*, %struct.lev_generic** %13, align 8
  %29 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.lev_generic*, %struct.lev_generic** %13, align 8
  %32 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.lev_generic*, %struct.lev_generic** %13, align 8
  %35 = getelementptr inbounds %struct.lev_generic, %struct.lev_generic* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  ret void
}

declare dso_local %struct.lev_generic* @write_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
