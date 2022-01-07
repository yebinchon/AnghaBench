; ModuleID = '/home/carl/AnghaBench/git/extr_http-push.c_one_remote_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-push.c_one_remote_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }
%struct.ref = type { %struct.ref*, i32 }
%struct.object = type { i32 }

@repo = common dso_local global %struct.TYPE_2__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unable to fetch ref %s from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"  fetch %s for %s\0A\00", align 1
@remote_refs = common dso_local global %struct.ref* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @one_remote_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @one_remote_ref(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ref*, align 8
  %4 = alloca %struct.object*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.ref* @alloc_ref(i8* %5)
  store %struct.ref* %6, %struct.ref** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.ref*, %struct.ref** %3, align 8
  %11 = call i64 @http_fetch_ref(i8* %9, %struct.ref* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %18)
  %20 = load %struct.ref*, %struct.ref** %3, align 8
  %21 = call i32 @free(%struct.ref* %20)
  br label %49

22:                                               ; preds = %1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @repo, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.ref*, %struct.ref** %3, align 8
  %29 = getelementptr inbounds %struct.ref, %struct.ref* %28, i32 0, i32 1
  %30 = call i32 @has_object_file(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load %struct.ref*, %struct.ref** %3, align 8
  %34 = getelementptr inbounds %struct.ref, %struct.ref* %33, i32 0, i32 1
  %35 = call %struct.object* @lookup_unknown_object(i32* %34)
  store %struct.object* %35, %struct.object** %4, align 8
  %36 = load i32, i32* @stderr, align 4
  %37 = load %struct.ref*, %struct.ref** %3, align 8
  %38 = getelementptr inbounds %struct.ref, %struct.ref* %37, i32 0, i32 1
  %39 = call i8* @oid_to_hex(i32* %38)
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %40)
  %42 = load %struct.object*, %struct.object** %4, align 8
  %43 = call i32 @add_fetch_request(%struct.object* %42)
  br label %44

44:                                               ; preds = %32, %27, %22
  %45 = load %struct.ref*, %struct.ref** @remote_refs, align 8
  %46 = load %struct.ref*, %struct.ref** %3, align 8
  %47 = getelementptr inbounds %struct.ref, %struct.ref* %46, i32 0, i32 0
  store %struct.ref* %45, %struct.ref** %47, align 8
  %48 = load %struct.ref*, %struct.ref** %3, align 8
  store %struct.ref* %48, %struct.ref** @remote_refs, align 8
  br label %49

49:                                               ; preds = %44, %13
  ret void
}

declare dso_local %struct.ref* @alloc_ref(i8*) #1

declare dso_local i64 @http_fetch_ref(i8*, %struct.ref*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @free(%struct.ref*) #1

declare dso_local i32 @has_object_file(i32*) #1

declare dso_local %struct.object* @lookup_unknown_object(i32*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @add_fetch_request(%struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
