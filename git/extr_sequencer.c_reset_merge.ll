; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_reset_merge.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_reset_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }
%struct.object_id = type { i32 }

@ARGV_ARRAY_INIT = common dso_local global %struct.argv_array zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--merge\00", align 1
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*)* @reset_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_merge(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.argv_array, align 4
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %5 = bitcast %struct.argv_array* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.argv_array* @ARGV_ARRAY_INIT to i8*), i64 4, i1 false)
  %6 = call i32 @argv_array_pushl(%struct.argv_array* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %7 = load %struct.object_id*, %struct.object_id** %2, align 8
  %8 = call i32 @is_null_oid(%struct.object_id* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.object_id*, %struct.object_id** %2, align 8
  %12 = call i32 @oid_to_hex(%struct.object_id* %11)
  %13 = call i32 @argv_array_push(%struct.argv_array* %4, i32 %12)
  br label %14

14:                                               ; preds = %10, %1
  %15 = getelementptr inbounds %struct.argv_array, %struct.argv_array* %4, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RUN_GIT_CMD, align 4
  %18 = call i32 @run_command_v_opt(i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = call i32 @argv_array_clear(%struct.argv_array* %4)
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @argv_array_pushl(%struct.argv_array*, i8*, i8*, i32*) #2

declare dso_local i32 @is_null_oid(%struct.object_id*) #2

declare dso_local i32 @argv_array_push(%struct.argv_array*, i32) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @run_command_v_opt(i32, i32) #2

declare dso_local i32 @argv_array_clear(%struct.argv_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
