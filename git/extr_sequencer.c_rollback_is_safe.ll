; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_rollback_is_safe.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_rollback_is_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"could not parse %s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"could not read '%s'\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rollback_is_safe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rollback_is_safe() #0 {
  %1 = alloca %struct.strbuf, align 4
  %2 = alloca %struct.object_id, align 4
  %3 = alloca %struct.object_id, align 4
  %4 = bitcast %struct.strbuf* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %5 = call i32 (...) @git_path_abort_safety_file()
  %6 = call i64 @strbuf_read_file(%struct.strbuf* %1, i32 %5, i32 0)
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %0
  %9 = call i32 @strbuf_trim(%struct.strbuf* %1)
  %10 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @get_oid_hex(i32 %11, %struct.object_id* %2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = call i32 @strbuf_release(%struct.strbuf* %1)
  %16 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @git_path_abort_safety_file()
  %18 = call i32 @die(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %14, %8
  %20 = call i32 @strbuf_release(%struct.strbuf* %1)
  br label %32

21:                                               ; preds = %0
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ENOENT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @oidclr(%struct.object_id* %2)
  br label %31

27:                                               ; preds = %21
  %28 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = call i32 (...) @git_path_abort_safety_file()
  %30 = call i32 @die_errno(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %25
  br label %32

32:                                               ; preds = %31, %19
  %33 = call i64 @get_oid(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.object_id* %3)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @oidclr(%struct.object_id* %3)
  br label %37

37:                                               ; preds = %35, %32
  %38 = call i32 @oideq(%struct.object_id* %3, %struct.object_id* %2)
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strbuf_read_file(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @git_path_abort_safety_file(...) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i64 @get_oid_hex(i32, %struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @die(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @oidclr(%struct.object_id*) #2

declare dso_local i32 @die_errno(i32, i32) #2

declare dso_local i64 @get_oid(i8*, %struct.object_id*) #2

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
