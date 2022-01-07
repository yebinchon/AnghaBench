; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_write_revlist_metafiles_headers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-data.c_write_revlist_metafiles_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_revlist_metafiles_offsets = common dso_local global i32 0, align 4
@new_tot_revlist_metafiles = common dso_local global i32 0, align 4
@new_revlist_metafiles_list_object = common dso_local global i32 0, align 4
@new_revlist_metafiles_list_object_pos = common dso_local global i32 0, align 4
@new_revlist_metafiles_crc32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_revlist_metafiles_headers() #0 {
  %1 = load i32, i32* @new_revlist_metafiles_offsets, align 4
  %2 = load i32, i32* @new_tot_revlist_metafiles, align 4
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @writeout(i32 %1, i32 %6)
  %8 = load i32, i32* @new_revlist_metafiles_list_object, align 4
  %9 = load i32, i32* @new_revlist_metafiles_list_object_pos, align 4
  %10 = load i32, i32* @new_revlist_metafiles_list_object, align 4
  %11 = sub nsw i32 %9, %10
  %12 = call i32 @writeout(i32 %8, i32 %11)
  %13 = load i32, i32* @new_revlist_metafiles_crc32, align 4
  %14 = load i32, i32* @new_tot_revlist_metafiles, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32 @writeout(i32 %13, i32 %18)
  ret void
}

declare dso_local i32 @writeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
