; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_dump_buffers.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-buffers.c_dump_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.TYPE_5__* }

@NB_MAGIC_HEAD = common dso_local global i64 0, align 8
@NB_MAGIC_BUSYHEAD = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"\0A\0ADumping buffer chain at %p, %d extra buffers, %d total bytes, %d unprocessed bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"\0AEND (dumping buffer chain at %p)\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_buffers(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NB_MAGIC_HEAD, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NB_MAGIC_BUSYHEAD, align 8
  %16 = icmp eq i64 %14, %15
  br label %17

17:                                               ; preds = %11, %1
  %18 = phi i1 [ true, %1 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32, i8*, %struct.TYPE_5__*, ...) @fprintf(i32 %21, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @dump_buffer(%struct.TYPE_5__* %33, i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %3, align 8
  br label %44

44:                                               ; preds = %58, %17
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = icmp ne %struct.TYPE_5__* %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @dump_buffer(%struct.TYPE_5__* %49, i32 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %48
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %3, align 8
  br label %44

62:                                               ; preds = %44
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = call i32 (i32, i8*, %struct.TYPE_5__*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %64)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, %struct.TYPE_5__*, ...) #1

declare dso_local i64 @dump_buffer(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
