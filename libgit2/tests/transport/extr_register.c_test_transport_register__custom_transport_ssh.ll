; ModuleID = '/home/carl/AnghaBench/libgit2/tests/transport/extr_register.c_test_transport_register__custom_transport_ssh.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/transport/extr_register.c_test_transport_register__custom_transport_ssh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [24 x i8] c"ssh://somehost:somepath\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"ssh+git://somehost:somepath\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"git+ssh://somehost:somepath\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"git@somehost:somepath\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ssh://somehost:somepath%20with%20%spaces\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"ssh://somehost:somepath with spaces\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@dummy_transport = common dso_local global i32 0, align 4
@_transport = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_transport_register__custom_transport_ssh() #0 {
  %1 = alloca [6 x i8*], align 16
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = bitcast [6 x i8*]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 48, i1 false)
  %5 = bitcast i8* %4 to [6 x i8*]*
  %6 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i8** %6, align 16
  %7 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8** %7, align 8
  %8 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 16
  %9 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i8** %9, align 8
  %10 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 4
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8** %10, align 16
  %11 = getelementptr inbounds [6 x i8*], [6 x i8*]* %5, i32 0, i32 5
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i8** %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %24, %0
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 0
  %15 = call i32 @ARRAY_SIZE(i8** %14)
  %16 = icmp ult i32 %13, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @git_transport_new(%struct.TYPE_6__** %2, i32* null, i8* %21)
  %23 = call i32 @cl_git_fail_with(i32 %22, i32 -1)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %12

27:                                               ; preds = %12
  %28 = load i32, i32* @dummy_transport, align 4
  %29 = call i32 @git_transport_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %28, i32* null)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = call i32 @git_transport_new(%struct.TYPE_6__** %2, i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @cl_git_pass(i32 %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = icmp eq %struct.TYPE_6__* %33, @_transport
  %35 = zext i1 %34 to i32
  %36 = call i32 @cl_assert(i32 %35)
  %37 = call i32 @git_transport_unregister(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %51, %27
  %40 = load i32, i32* %3, align 4
  %41 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 0
  %42 = call i32 @ARRAY_SIZE(i8** %41)
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %1, i64 0, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @git_transport_new(%struct.TYPE_6__** %2, i32* null, i8* %48)
  %50 = call i32 @cl_git_fail_with(i32 %49, i32 -1)
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %39

54:                                               ; preds = %39
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_transport_new(%struct.TYPE_6__**, i32*, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_transport_register(i8*, i32, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @git_transport_unregister(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
