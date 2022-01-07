; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_delete.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_slot = type { i64, i32, i32, i32 }

@JV_KIND_STRING = common dso_local global i32 0, align 4
@JV_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @jvp_object_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jvp_object_delete(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.object_slot*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @JV_KIND_STRING, align 4
  %12 = call i32 @JVP_HAS_KIND(i32 %10, i32 %11)
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @jvp_object_unshare(i32 %15)
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @jvp_object_find_bucket(i32 %19, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @jvp_string_hash(i32 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.object_slot* @jvp_object_get_slot(i32 %26, i32 %28)
  store %struct.object_slot* %29, %struct.object_slot** %9, align 8
  br label %30

30:                                               ; preds = %65, %2
  %31 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %32 = icmp ne %struct.object_slot* %31, null
  br i1 %32, label %33, label %70

33:                                               ; preds = %30
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %36 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %42 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @jvp_string_equal(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %48 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %52 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @jvp_string_free(i32 %53)
  %55 = load i32, i32* @JV_NULL, align 4
  %56 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %57 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %59 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @jv_free(i32 %60)
  store i32 1, i32* %3, align 4
  br label %71

62:                                               ; preds = %39, %33
  %63 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %64 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %63, i32 0, i32 1
  store i32* %64, i32** %7, align 8
  br label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %69 = call %struct.object_slot* @jvp_object_next_slot(i32 %67, %struct.object_slot* %68)
  store %struct.object_slot* %69, %struct.object_slot** %9, align 8
  br label %30

70:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i32 @jvp_object_unshare(i32) #1

declare dso_local i32* @jvp_object_find_bucket(i32, i32) #1

declare dso_local i64 @jvp_string_hash(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i64 @jvp_string_equal(i32, i32) #1

declare dso_local i32 @jvp_string_free(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local %struct.object_slot* @jvp_object_next_slot(i32, %struct.object_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
