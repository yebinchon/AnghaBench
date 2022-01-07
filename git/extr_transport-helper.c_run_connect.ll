; ModuleID = '/home/carl/AnghaBench/git/extr_transport-helper.c_run_connect.c'
source_filename = "/home/carl/AnghaBench/git/extr_transport-helper.c_run_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.transport = type { %struct.helper_data* }
%struct.helper_data = type { i32 }
%struct.strbuf = type { i32 }
%struct.child_process = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"can't dup helper output fd\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@_IONBF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Debug: Smart transport connection ready.\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fallback\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Debug: Falling back to dumb transport.\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"unknown response to connect: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.transport*, %struct.strbuf*)* @run_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_connect(%struct.transport* %0, %struct.strbuf* %1) #0 {
  %3 = alloca %struct.transport*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca %struct.helper_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.child_process*, align 8
  store %struct.transport* %0, %struct.transport** %3, align 8
  store %struct.strbuf* %1, %struct.strbuf** %4, align 8
  %10 = load %struct.transport*, %struct.transport** %3, align 8
  %11 = getelementptr inbounds %struct.transport, %struct.transport* %10, i32 0, i32 0
  %12 = load %struct.helper_data*, %struct.helper_data** %11, align 8
  store %struct.helper_data* %12, %struct.helper_data** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.transport*, %struct.transport** %3, align 8
  %14 = call %struct.child_process* @get_helper(%struct.transport* %13)
  store %struct.child_process* %14, %struct.child_process** %9, align 8
  %15 = load %struct.child_process*, %struct.child_process** %9, align 8
  %16 = getelementptr inbounds %struct.child_process, %struct.child_process* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dup(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @die_errno(i32 %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %7, align 4
  %26 = call i32* @xfdopen(i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @_IONBF, align 4
  %29 = call i32 @setvbuf(i32* %27, i32* null, i32 %28, i32 0)
  %30 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %31 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %32 = call i32 @sendline(%struct.helper_data* %30, %struct.strbuf* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %35 = call i64 @recvline_fh(i32* %33, %struct.strbuf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = call i32 @exit(i32 128) #3
  unreachable

39:                                               ; preds = %24
  %40 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %41 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strcmp(i32 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load %struct.helper_data*, %struct.helper_data** %5, align 8
  %47 = getelementptr inbounds %struct.helper_data, %struct.helper_data* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i64, i64* @debug, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %45
  store i32 1, i32* %6, align 4
  br label %74

54:                                               ; preds = %39
  %55 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %56 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @strcmp(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* @debug, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %60
  br label %73

67:                                               ; preds = %54
  %68 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %69 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %70 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @die(i32 %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %66
  br label %74

74:                                               ; preds = %73, %53
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @fclose(i32* %75)
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.child_process* @get_helper(%struct.transport*) #1

declare dso_local i32 @dup(i32) #1

declare dso_local i32 @die_errno(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @xfdopen(i32, i8*) #1

declare dso_local i32 @setvbuf(i32*, i32*, i32, i32) #1

declare dso_local i32 @sendline(%struct.helper_data*, %struct.strbuf*) #1

declare dso_local i64 @recvline_fh(i32*, %struct.strbuf*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
