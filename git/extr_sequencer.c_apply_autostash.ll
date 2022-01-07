; ModuleID = '/home/carl/AnghaBench/git/extr_sequencer.c_apply_autostash.c'
source_filename = "/home/carl/AnghaBench/git/extr_sequencer.c_apply_autostash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.child_process = type { i32, i32, i32, i32 }
%struct.replay_opts = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Applied autostash.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"autostash\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"cannot store %s\00", align 1
@.str.8 = private unnamed_addr constant [140 x i8] c"Applying autostash resulted in conflicts.\0AYour changes are safe in the stash.\0AYou can run \22git stash pop\22 or \22git stash drop\22 at any time.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.replay_opts*)* @apply_autostash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_autostash(%struct.replay_opts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.replay_opts*, align 8
  %4 = alloca %struct.strbuf, align 8
  %5 = alloca %struct.child_process, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.child_process, align 4
  store %struct.replay_opts* %0, %struct.replay_opts** %3, align 8
  %8 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %9 = bitcast %struct.child_process* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %6, align 4
  %10 = call i32 (...) @rebase_path_autostash()
  %11 = call i32 @read_oneliner(%struct.strbuf* %4, i32 %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @strbuf_release(%struct.strbuf* %4)
  store i32 0, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = call i32 @strbuf_trim(%struct.strbuf* %4)
  %17 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 2
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %21 = call i32 @argv_array_push(i32* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %23 = call i32 @argv_array_push(i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.child_process, %struct.child_process* %5, i32 0, i32 3
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @argv_array_push(i32* %24, i8* %26)
  %28 = call i64 @run_command(%struct.child_process* %5)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %15
  %31 = load i32, i32* @stderr, align 4
  %32 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %33 = call i32 @fprintf(i32 %31, i8* %32)
  br label %63

34:                                               ; preds = %15
  %35 = bitcast %struct.child_process* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %36 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %38 = call i32 @argv_array_push(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %40 = call i32 @argv_array_push(i32* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %41 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %42 = call i32 @argv_array_push(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %44 = call i32 @argv_array_push(i32* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %46 = call i32 @argv_array_push(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.child_process, %struct.child_process* %7, i32 0, i32 3
  %48 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @argv_array_push(i32* %47, i8* %49)
  %51 = call i64 @run_command(%struct.child_process* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %34
  %54 = call i8* @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @error(i8* %54, i8* %56)
  store i32 %57, i32* %6, align 4
  br label %62

58:                                               ; preds = %34
  %59 = load i32, i32* @stderr, align 4
  %60 = call i8* @_(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.8, i64 0, i64 0))
  %61 = call i32 @fprintf(i32 %59, i8* %60)
  br label %62

62:                                               ; preds = %58, %53
  br label %63

63:                                               ; preds = %62, %30
  %64 = call i32 @strbuf_release(%struct.strbuf* %4)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @read_oneliner(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @rebase_path_autostash(...) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @argv_array_push(i32*, i8*) #2

declare dso_local i64 @run_command(%struct.child_process*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @error(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
