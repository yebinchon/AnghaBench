; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_unkeep_all_packs.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_unkeep_all_packs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.packed_git = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@pack_id = common dso_local global i32 0, align 4
@all_packs = common dso_local global %struct.packed_git** null, align 8
@.str = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unkeep_all_packs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unkeep_all_packs() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.packed_git*, align 8
  %4 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %22, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @pack_id, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load %struct.packed_git**, %struct.packed_git*** @all_packs, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %10, i64 %12
  %14 = load %struct.packed_git*, %struct.packed_git** %13, align 8
  store %struct.packed_git* %14, %struct.packed_git** %3, align 8
  %15 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %16 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @odb_pack_name(%struct.strbuf* %1, i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @unlink_or_warn(i32 %20)
  br label %22

22:                                               ; preds = %9
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %5

25:                                               ; preds = %5
  %26 = call i32 @strbuf_release(%struct.strbuf* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @odb_pack_name(%struct.strbuf*, i32, i8*) #2

declare dso_local i32 @unlink_or_warn(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
