; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_show_text_ref.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_show_text_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }
%struct.object = type { i64, %struct.object_id }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@OBJ_TAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"%s\09%s^{}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @show_text_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_text_ref(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.strbuf*, align 8
  %12 = alloca %struct.object*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strip_namespace(i8* %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.strbuf*
  store %struct.strbuf* %16, %struct.strbuf** %11, align 8
  %17 = load i32, i32* @the_repository, align 4
  %18 = load %struct.object_id*, %struct.object_id** %7, align 8
  %19 = call %struct.object* @parse_object(i32 %17, %struct.object_id* %18)
  store %struct.object* %19, %struct.object** %12, align 8
  %20 = load %struct.object*, %struct.object** %12, align 8
  %21 = icmp ne %struct.object* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %25 = load %struct.object_id*, %struct.object_id** %7, align 8
  %26 = call i32 @oid_to_hex(%struct.object_id* %25)
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @strbuf_addf(%struct.strbuf* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  %29 = load %struct.object*, %struct.object** %12, align 8
  %30 = getelementptr inbounds %struct.object, %struct.object* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OBJ_TAG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %23
  %35 = load i32, i32* @the_repository, align 4
  %36 = load %struct.object*, %struct.object** %12, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call %struct.object* @deref_tag(i32 %35, %struct.object* %36, i8* %37, i32 0)
  store %struct.object* %38, %struct.object** %12, align 8
  %39 = load %struct.object*, %struct.object** %12, align 8
  %40 = icmp ne %struct.object* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %50

42:                                               ; preds = %34
  %43 = load %struct.strbuf*, %struct.strbuf** %11, align 8
  %44 = load %struct.object*, %struct.object** %12, align 8
  %45 = getelementptr inbounds %struct.object, %struct.object* %44, i32 0, i32 1
  %46 = call i32 @oid_to_hex(%struct.object_id* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @strbuf_addf(%struct.strbuf* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %42, %23
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %41, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i8* @strip_namespace(i8*) #1

declare dso_local %struct.object* @parse_object(i32, %struct.object_id*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local %struct.object* @deref_tag(i32, %struct.object*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
