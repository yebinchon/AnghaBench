; ModuleID = '/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_read_setup_vecs_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_buffer.c_evbuffer_read_setup_vecs_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { %struct.evbuffer_chain** }
%struct.evbuffer_chain = type { %struct.evbuffer_chain* }
%struct.evbuffer_iovec = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_read_setup_vecs_(%struct.evbuffer* %0, i64 %1, %struct.evbuffer_iovec* %2, i32 %3, %struct.evbuffer_chain*** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.evbuffer_iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.evbuffer_chain***, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.evbuffer_chain*, align 8
  %15 = alloca %struct.evbuffer_chain**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.evbuffer_iovec* %2, %struct.evbuffer_iovec** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.evbuffer_chain*** %4, %struct.evbuffer_chain**** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %20 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %97

24:                                               ; preds = %6
  store i64 0, i64* %16, align 8
  %25 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 0
  %27 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %26, align 8
  store %struct.evbuffer_chain** %27, %struct.evbuffer_chain*** %15, align 8
  %28 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %29 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %28, align 8
  %30 = call i32 @EVUTIL_ASSERT(%struct.evbuffer_chain* %29)
  %31 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %32 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %31, align 8
  %33 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %37 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %36, align 8
  %38 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %37, i32 0, i32 0
  store %struct.evbuffer_chain** %38, %struct.evbuffer_chain*** %15, align 8
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %41 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %40, align 8
  store %struct.evbuffer_chain* %41, %struct.evbuffer_chain** %14, align 8
  %42 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %14, align 8
  %43 = call i32 @EVUTIL_ASSERT(%struct.evbuffer_chain* %42)
  store i32 0, i32* %17, align 4
  br label %44

44:                                               ; preds = %90, %39
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i64, i64* %16, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %93

54:                                               ; preds = %52
  %55 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %14, align 8
  %56 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %55)
  store i64 %56, i64* %18, align 8
  %57 = load i64, i64* %18, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %16, align 8
  %60 = sub i64 %58, %59
  %61 = icmp ugt i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %16, align 8
  %68 = sub i64 %66, %67
  store i64 %68, i64* %18, align 8
  br label %69

69:                                               ; preds = %65, %62, %54
  %70 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %14, align 8
  %71 = call i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain* %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %73, i64 %75
  %77 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %76, i32 0, i32 1
  store i8* %72, i8** %77, align 8
  %78 = load i64, i64* %18, align 8
  %79 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %79, i64 %81
  %83 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %82, i32 0, i32 0
  store i64 %78, i64* %83, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %16, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %16, align 8
  %87 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %14, align 8
  %88 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %87, i32 0, i32 0
  %89 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %88, align 8
  store %struct.evbuffer_chain* %89, %struct.evbuffer_chain** %14, align 8
  br label %90

90:                                               ; preds = %69
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %44

93:                                               ; preds = %52
  %94 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %95 = load %struct.evbuffer_chain***, %struct.evbuffer_chain**** %12, align 8
  store %struct.evbuffer_chain** %94, %struct.evbuffer_chain*** %95, align 8
  %96 = load i32, i32* %17, align 4
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %23
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(%struct.evbuffer_chain*) #1

declare dso_local i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain*) #1

declare dso_local i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
