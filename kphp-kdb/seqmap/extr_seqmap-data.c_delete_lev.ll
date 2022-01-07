; ModuleID = '/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete_lev.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/seqmap/extr_seqmap-data.c_delete_lev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_seq_delete = type { i32, i32 }

@LEV_SEQ_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delete_lev(%struct.lev_seq_delete* %0) #0 {
  %2 = alloca %struct.lev_seq_delete*, align 8
  %3 = alloca i32, align 4
  store %struct.lev_seq_delete* %0, %struct.lev_seq_delete** %2, align 8
  %4 = load %struct.lev_seq_delete*, %struct.lev_seq_delete** %2, align 8
  %5 = getelementptr inbounds %struct.lev_seq_delete, %struct.lev_seq_delete* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LEV_SEQ_DELETE, align 4
  %8 = sub nsw i32 %6, %7
  %9 = and i32 %8, 255
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = mul nsw i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = add i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.lev_seq_delete*, %struct.lev_seq_delete** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.lev_seq_delete*, %struct.lev_seq_delete** %2, align 8
  %18 = getelementptr inbounds %struct.lev_seq_delete, %struct.lev_seq_delete* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @delete(i32 %14, %struct.lev_seq_delete* %15, i32 %16, i32 %19)
  ret i32 %20
}

declare dso_local i32 @delete(i32, %struct.lev_seq_delete*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
