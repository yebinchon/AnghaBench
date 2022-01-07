; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_add_buffer_reference.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_add_buffer_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i64, %struct.evbuffer_chain*, i64 }
%struct.evbuffer_chain = type { i32, %struct.evbuffer_chain* }

@EVBUFFER_FILESEGMENT = common dso_local global i32 0, align 4
@EVBUFFER_SENDFILE = common dso_local global i32 0, align 4
@EVBUFFER_MULTICAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_add_buffer_reference(%struct.evbuffer* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.evbuffer_chain*, align 8
  %8 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %10 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %11 = call i32 @EVBUFFER_LOCK2(%struct.evbuffer* %9, %struct.evbuffer* %10)
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %16 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %19 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %18, i32 0, i32 2
  %20 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %19, align 8
  store %struct.evbuffer_chain* %20, %struct.evbuffer_chain** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %74

24:                                               ; preds = %2
  %25 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %31 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %32 = icmp eq %struct.evbuffer* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24
  store i32 -1, i32* %8, align 4
  br label %74

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %51, %34
  %36 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %37 = icmp ne %struct.evbuffer_chain* %36, null
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %40 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @EVBUFFER_FILESEGMENT, align 4
  %43 = load i32, i32* @EVBUFFER_SENDFILE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @EVBUFFER_MULTICAST, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %41, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i32 -1, i32* %8, align 4
  br label %74

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %53 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %52, i32 0, i32 1
  %54 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %53, align 8
  store %struct.evbuffer_chain* %54, %struct.evbuffer_chain** %7, align 8
  br label %35

55:                                               ; preds = %35
  %56 = load i64, i64* %6, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %60 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %59, i32 0, i32 2
  %61 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %60, align 8
  %62 = call i32 @evbuffer_free_all_chains(%struct.evbuffer_chain* %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %65 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %66 = call i32 @APPEND_CHAIN_MULTICAST(%struct.evbuffer* %64, %struct.evbuffer* %65)
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %69 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %73 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %72)
  br label %74

74:                                               ; preds = %63, %49, %33, %23
  %75 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %76 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %77 = call i32 @EVBUFFER_UNLOCK2(%struct.evbuffer* %75, %struct.evbuffer* %76)
  %78 = load i32, i32* %8, align 4
  ret i32 %78
}

declare dso_local i32 @EVBUFFER_LOCK2(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free_all_chains(%struct.evbuffer_chain*) #1

declare dso_local i32 @APPEND_CHAIN_MULTICAST(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK2(%struct.evbuffer*, %struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
