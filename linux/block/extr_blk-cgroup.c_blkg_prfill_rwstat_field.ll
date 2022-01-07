; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_prfill_rwstat_field.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-cgroup.c_blkg_prfill_rwstat_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.blkg_policy_data = type { i64 }
%struct.blkg_rwstat_sample = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.blkg_policy_data*, i32)* @blkg_prfill_rwstat_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkg_prfill_rwstat_field(%struct.seq_file* %0, %struct.blkg_policy_data* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.blkg_policy_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blkg_rwstat_sample, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.blkg_policy_data* %1, %struct.blkg_policy_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.blkg_rwstat_sample* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %5, align 8
  %10 = getelementptr inbounds %struct.blkg_policy_data, %struct.blkg_policy_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = call i32 @blkg_rwstat_read(i8* %15, %struct.blkg_rwstat_sample* %7)
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load %struct.blkg_policy_data*, %struct.blkg_policy_data** %5, align 8
  %19 = call i32 @__blkg_prfill_rwstat(%struct.seq_file* %17, %struct.blkg_policy_data* %18, %struct.blkg_rwstat_sample* %7)
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @blkg_rwstat_read(i8*, %struct.blkg_rwstat_sample*) #2

declare dso_local i32 @__blkg_prfill_rwstat(%struct.seq_file*, %struct.blkg_policy_data*, %struct.blkg_rwstat_sample*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
