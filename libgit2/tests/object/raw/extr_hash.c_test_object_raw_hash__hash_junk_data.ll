; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_hash.c_test_object_raw_hash__hash_junk_data.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_hash.c_test_object_raw_hash__hash_junk_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@zero_id = common dso_local global i32 0, align 4
@some_data = common dso_local global i32* null, align 8
@junk_obj = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GIT_OBJECT_OFS_DELTA = common dso_local global i32 0, align 4
@GIT_OBJECT_REF_DELTA = common dso_local global i32 0, align 4
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_hash__hash_junk_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @zero_id, align 4
  %4 = call i32 @git_oid_fromstr(i32* %2, i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** @some_data, align 8
  store i32* %6, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 2), align 8
  %7 = call i32 @hash_object_fail(i32* %1, %struct.TYPE_4__* @junk_obj)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 0), align 8
  %8 = call i32 @hash_object_fail(i32* %1, %struct.TYPE_4__* @junk_obj)
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 0), align 8
  %9 = call i32 @hash_object_fail(i32* %1, %struct.TYPE_4__* @junk_obj)
  %10 = load i32, i32* @GIT_OBJECT_OFS_DELTA, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 0), align 8
  %11 = call i32 @hash_object_fail(i32* %1, %struct.TYPE_4__* @junk_obj)
  %12 = load i32, i32* @GIT_OBJECT_REF_DELTA, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 0), align 8
  %13 = call i32 @hash_object_fail(i32* %1, %struct.TYPE_4__* @junk_obj)
  store i32 42, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 0), align 8
  %14 = call i32 @hash_object_fail(i32* %1, %struct.TYPE_4__* @junk_obj)
  %15 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 2), align 8
  %16 = call i32 @hash_object_pass(i32* %1, %struct.TYPE_4__* @junk_obj)
  %17 = call i64 @git_oid_cmp(i32* %1, i32* %2)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @junk_obj, i32 0, i32 1), align 4
  %21 = call i32 @hash_object_fail(i32* %1, %struct.TYPE_4__* @junk_obj)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @hash_object_fail(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @hash_object_pass(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @git_oid_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
