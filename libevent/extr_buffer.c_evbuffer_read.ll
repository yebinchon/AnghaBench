; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_read.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, i32, %struct.evbuffer_chain**, i64, i64 }
%struct.evbuffer_chain = type { i8*, i32, i32, %struct.evbuffer_chain* }

@EVBUFFER_CHAIN_MAX = common dso_local global i64 0, align 8
@NUM_READ_IOVEC = common dso_local global i32 0, align 4
@WSAECONNABORTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_read(%struct.evbuffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.evbuffer_chain**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.evbuffer_chain*, align 8
  %11 = alloca i8*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %12)
  %14 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  br label %97

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @get_n_bytes_readable_on_socket(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %27 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24, %19
  %32 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %33 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %39
  %46 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer* %46, i32 %47)
  store %struct.evbuffer_chain* %48, %struct.evbuffer_chain** %10, align 8
  %49 = icmp eq %struct.evbuffer_chain* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %9, align 4
  br label %97

51:                                               ; preds = %45
  %52 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %53 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %56 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %61 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  store i8* %64, i8** %11, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @read(i32 %65, i8* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %51
  store i32 -1, i32* %9, align 4
  br label %97

72:                                               ; preds = %51
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %97

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %79 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %83 = call i32 @advance_last_with_data(%struct.evbuffer* %82)
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %86 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %91 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %95 = call i32 @evbuffer_invoke_callbacks_(%struct.evbuffer* %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %76, %75, %71, %50, %18
  %98 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %99 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @get_n_bytes_readable_on_socket(i32) #1

declare dso_local %struct.evbuffer_chain* @evbuffer_expand_singlechain(%struct.evbuffer*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @advance_last_with_data(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_invoke_callbacks_(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
