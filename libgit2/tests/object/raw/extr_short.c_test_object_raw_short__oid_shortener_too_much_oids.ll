; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_short.c_test_object_raw_short__oid_shortener_too_much_oids.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_short.c_test_object_raw_short__oid_shortener_too_much_oids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_OIDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_short__oid_shortener_too_much_oids() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8**, align 8
  %3 = call i32* @git_oid_shorten_new(i32 0)
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @cl_assert(i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @insert_sequential_oids(i8*** %2, i32* %8, i64 24556, i64 24555)
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @cl_assert(i32 %11)
  %13 = load i8**, i8*** %2, align 8
  %14 = call i32 @free_oids(i64 24556, i8** %13)
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_oid_shorten_free(i32* %15)
  ret void
}

declare dso_local i32* @git_oid_shorten_new(i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i64 @insert_sequential_oids(i8***, i32*, i64, i64) #1

declare dso_local i32 @free_oids(i64, i8**) #1

declare dso_local i32 @git_oid_shorten_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
