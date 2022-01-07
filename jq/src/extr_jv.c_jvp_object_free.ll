; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_free.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.object_slot = type { i32, i32 }

@JV_KIND_OBJECT = common dso_local global i32 0, align 4
@JV_KIND_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @jvp_object_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jvp_object_free(i32 %0) #0 {
  %2 = alloca %struct.TYPE_9__, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_slot*, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  %7 = load i32, i32* @JV_KIND_OBJECT, align 4
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @JVP_HAS_KIND(i32 %10, i32 %7)
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @jvp_refcnt_dec(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %48, %18
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @jvp_object_size(i32 %23)
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.object_slot* @jvp_object_get_slot(i32 %30, i32 %27)
  store %struct.object_slot* %31, %struct.object_slot** %4, align 8
  %32 = load %struct.object_slot*, %struct.object_slot** %4, align 8
  %33 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @jv_get_kind(i32 %34)
  %36 = load i64, i64* @JV_KIND_NULL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %26
  %39 = load %struct.object_slot*, %struct.object_slot** %4, align 8
  %40 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @jvp_string_free(i32 %41)
  %43 = load %struct.object_slot*, %struct.object_slot** %4, align 8
  %44 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @jv_free(i32 %45)
  br label %47

47:                                               ; preds = %38, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %19

51:                                               ; preds = %19
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @jvp_object_ptr(i32 %54)
  %56 = call i32 @jv_mem_free(i32 %55)
  br label %57

57:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i64 @jvp_refcnt_dec(i32) #1

declare dso_local i32 @jvp_object_size(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jvp_string_free(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_mem_free(i32) #1

declare dso_local i32 @jvp_object_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
