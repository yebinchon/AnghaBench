; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_server_writer.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-merge.c_server_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32 }

@C_WANTWR = common dso_local global i32 0, align 4
@C_NOWR = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"send() to %d: %d written out of %d at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"send()\00", align 1
@EVT_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_writer(%struct.connection* %0) #0 {
  %2 = alloca %struct.connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %85, %1
  %8 = load %struct.connection*, %struct.connection** %2, align 8
  %9 = getelementptr inbounds %struct.connection, %struct.connection* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @C_WANTWR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %86

14:                                               ; preds = %7
  %15 = load %struct.connection*, %struct.connection** %2, align 8
  %16 = getelementptr inbounds %struct.connection, %struct.connection* %15, i32 0, i32 2
  %17 = call i32 @get_ready_bytes(i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* @C_WANTWR, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.connection*, %struct.connection** %2, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %86

27:                                               ; preds = %14
  %28 = load %struct.connection*, %struct.connection** %2, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @C_NOWR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %86

35:                                               ; preds = %27
  %36 = load %struct.connection*, %struct.connection** %2, align 8
  %37 = getelementptr inbounds %struct.connection, %struct.connection* %36, i32 0, i32 2
  %38 = call i8* @get_read_ptr(i32* %37)
  store i8* %38, i8** %6, align 8
  %39 = load %struct.connection*, %struct.connection** %2, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MSG_DONTWAIT, align 4
  %45 = load i32, i32* @MSG_NOSIGNAL, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @send(i32 %41, i8* %42, i32 %43, i32 %46)
  store i32 %47, i32* %3, align 4
  %48 = load i64, i64* @verbosity, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %35
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.connection*, %struct.connection** %2, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i8* %57)
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %50
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* %3, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load %struct.connection*, %struct.connection** %2, align 8
  %69 = getelementptr inbounds %struct.connection, %struct.connection* %68, i32 0, i32 2
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @advance_read_ptr(i32* %69, i32 %70)
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @C_NOWR, align 4
  %81 = load %struct.connection*, %struct.connection** %2, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %75
  br label %7

86:                                               ; preds = %34, %20, %7
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.connection*, %struct.connection** %2, align 8
  %91 = getelementptr inbounds %struct.connection, %struct.connection* %90, i32 0, i32 2
  %92 = call i32 @free_unused_buffers(i32* %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.connection*, %struct.connection** %2, align 8
  %95 = getelementptr inbounds %struct.connection, %struct.connection* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @C_WANTWR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i32, i32* @EVT_WRITE, align 4
  br label %103

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  ret i32 %104
}

declare dso_local i32 @get_ready_bytes(i32*) #1

declare dso_local i8* @get_read_ptr(i32*) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @advance_read_ptr(i32*, i32) #1

declare dso_local i32 @free_unused_buffers(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
