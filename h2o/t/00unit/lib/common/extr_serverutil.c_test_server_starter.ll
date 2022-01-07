; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_serverutil.c_test_server_starter.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_serverutil.c_test_server_starter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SERVER_STARTER_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"0.0.0.0:80=3\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"0.0.0.0:80=3;/tmp/foo.sock=4\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0.0.0.0:80=foo\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"50908=4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_server_starter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_server_starter() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @SERVER_STARTER_PORT, align 4
  %4 = call i32 @unsetenv(i32 %3)
  %5 = call i64 @h2o_server_starter_get_fds(i32** %1)
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8)
  %10 = load i32, i32* @SERVER_STARTER_PORT, align 4
  %11 = call i32 @setenv(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 1)
  %12 = call i64 @h2o_server_starter_get_fds(i32** %1)
  store i64 %12, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp eq i64 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21)
  %23 = load i32, i32* @SERVER_STARTER_PORT, align 4
  %24 = call i32 @setenv(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %25 = call i64 @h2o_server_starter_get_fds(i32** %1)
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = icmp eq i64 %26, 2
  %28 = zext i1 %27 to i32
  %29 = call i32 @ok(i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 3
  %34 = zext i1 %33 to i32
  %35 = call i32 @ok(i32 %34)
  %36 = load i32*, i32** %1, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  %40 = zext i1 %39 to i32
  %41 = call i32 @ok(i32 %40)
  %42 = load i32, i32* @SERVER_STARTER_PORT, align 4
  %43 = call i32 @setenv(i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %44 = call i64 @h2o_server_starter_get_fds(i32** %1)
  store i64 %44, i64* %2, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @SIZE_MAX, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ok(i32 %48)
  %50 = load i32, i32* @SERVER_STARTER_PORT, align 4
  %51 = call i32 @setenv(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %52 = call i64 @h2o_server_starter_get_fds(i32** %1)
  store i64 %52, i64* %2, align 8
  %53 = load i64, i64* %2, align 8
  %54 = icmp eq i64 %53, 1
  %55 = zext i1 %54 to i32
  %56 = call i32 @ok(i32 %55)
  %57 = load i32*, i32** %1, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 4
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61)
  ret void
}

declare dso_local i32 @unsetenv(i32) #1

declare dso_local i64 @h2o_server_starter_get_fds(i32**) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @setenv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
