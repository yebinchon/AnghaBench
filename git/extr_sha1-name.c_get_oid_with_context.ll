; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_with_context.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-name.c_get_oid_with_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.object_context = type { i32 }

@GET_OID_FOLLOW_SYMLINKS = common dso_local global i32 0, align 4
@GET_OID_ONLY_TO_DIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"incompatible flags for get_sha1_with_context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_oid_with_context(%struct.repository* %0, i8* %1, i32 %2, %struct.object_id* %3, %struct.object_context* %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca %struct.object_context*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  store %struct.object_context* %4, %struct.object_context** %10, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @GET_OID_FOLLOW_SYMLINKS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @GET_OID_ONLY_TO_DIE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = call i32 @BUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15, %5
  %23 = load %struct.repository*, %struct.repository** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.object_id*, %struct.object_id** %9, align 8
  %27 = load %struct.object_context*, %struct.object_context** %10, align 8
  %28 = call i32 @get_oid_with_context_1(%struct.repository* %23, i8* %24, i32 %25, i32* null, %struct.object_id* %26, %struct.object_context* %27)
  ret i32 %28
}

declare dso_local i32 @BUG(i8*) #1

declare dso_local i32 @get_oid_with_context_1(%struct.repository*, i8*, i32, i32*, %struct.object_id*, %struct.object_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
