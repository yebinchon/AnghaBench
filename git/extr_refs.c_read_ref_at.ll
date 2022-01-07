; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_read_ref_at.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_read_ref_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }
%struct.read_ref_at_cb = type { i8*, i32, i8**, i32*, i32*, i64, i32, %struct.object_id*, i32*, i32 }

@read_ref_at_ent = common dso_local global i32 0, align 4
@GET_OID_QUIETLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"log for %s is empty\00", align 1
@read_ref_at_ent_oldest = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_ref_at(%struct.ref_store* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.object_id* %5, i8** %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.ref_store*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.object_id*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.read_ref_at_cb, align 8
  store %struct.ref_store* %0, %struct.ref_store** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store %struct.object_id* %5, %struct.object_id** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %23 = call i32 @memset(%struct.read_ref_at_cb* %22, i32 0, i32 80)
  %24 = load i8*, i8** %13, align 8
  %25 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %15, align 4
  %27 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 9
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %16, align 4
  %29 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i8**, i8*** %18, align 8
  %31 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 2
  store i8** %30, i8*** %31, align 8
  %32 = load i32*, i32** %19, align 8
  %33 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 8
  store i32* %32, i32** %33, align 8
  %34 = load i32*, i32** %20, align 8
  %35 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 3
  store i32* %34, i32** %35, align 8
  %36 = load i32*, i32** %21, align 8
  %37 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 4
  store i32* %36, i32** %37, align 8
  %38 = load %struct.object_id*, %struct.object_id** %17, align 8
  %39 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 7
  store %struct.object_id* %38, %struct.object_id** %39, align 8
  %40 = load %struct.ref_store*, %struct.ref_store** %12, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* @read_ref_at_ent, align 4
  %43 = call i32 @refs_for_each_reflog_ent_reverse(%struct.ref_store* %40, i8* %41, i32 %42, %struct.read_ref_at_cb* %22)
  %44 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %10
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @GET_OID_QUIETLY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @exit(i32 128) #3
  unreachable

54:                                               ; preds = %47
  %55 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @die(i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %10
  %60 = getelementptr inbounds %struct.read_ref_at_cb, %struct.read_ref_at_cb* %22, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %11, align 4
  br label %69

64:                                               ; preds = %59
  %65 = load %struct.ref_store*, %struct.ref_store** %12, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* @read_ref_at_ent_oldest, align 4
  %68 = call i32 @refs_for_each_reflog_ent(%struct.ref_store* %65, i8* %66, i32 %67, %struct.read_ref_at_cb* %22)
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %64, %63
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%struct.read_ref_at_cb*, i32, i32) #1

declare dso_local i32 @refs_for_each_reflog_ent_reverse(%struct.ref_store*, i8*, i32, %struct.read_ref_at_cb*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @refs_for_each_reflog_ent(%struct.ref_store*, i8*, i32, %struct.read_ref_at_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
