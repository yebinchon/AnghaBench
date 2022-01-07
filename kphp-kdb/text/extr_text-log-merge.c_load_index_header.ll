; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-merge.c_load_index_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-log-merge.c_load_index_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@Header = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TEXT_INDEX_MAGIC = common dso_local global i64 0, align 8
@MAX_SUBLISTS = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@MAX_FILE_DICTIONARY_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_index_header(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @read(i32 %7, %struct.TYPE_3__* @Header, i32 4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp eq i64 %10, 4
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 0), align 8
  %15 = load i64, i64* @TEXT_INDEX_MAGIC, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 1), align 8
  %20 = load i32, i32* @MAX_SUBLISTS, align 4
  %21 = icmp ule i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 2), align 4
  %25 = load i32, i32* @MAX_USERS, align 4
  %26 = icmp ule i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 3), align 8
  %30 = icmp sge i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 1), align 8
  %34 = mul nsw i32 4, %33
  %35 = sext i32 %34 to i64
  %36 = add i64 4, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 4), align 8
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, 4
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 4), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 1), align 8
  %45 = mul nsw i32 %44, 4
  %46 = add nsw i32 %43, %45
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 5), align 4
  %48 = icmp sle i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 5), align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 6), align 8
  %55 = sext i32 %54 to i64
  %56 = icmp ule i64 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 6), align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 7), align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ule i64 %61, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 8), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 7), align 4
  %69 = add nsw i32 %68, 4
  %70 = icmp sge i32 %67, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 8), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 7), align 4
  %75 = load i32, i32* @MAX_FILE_DICTIONARY_BYTES, align 4
  %76 = add nsw i32 %74, %75
  %77 = icmp sle i32 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 9), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 8), align 8
  %82 = add nsw i32 %81, 4
  %83 = icmp sge i32 %80, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 9), align 4
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 8), align 8
  %88 = load i32, i32* @MAX_FILE_DICTIONARY_BYTES, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp sle i32 %86, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 9), align 4
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 2), align 4
  %95 = load i32, i32* %6, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  %98 = add nsw i32 %97, 16
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 10), align 8
  %100 = icmp sle i32 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 10), align 8
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 11), align 8
  %106 = icmp sle i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 11), align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 12), align 8
  %111 = icmp sle i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @Header, i32 0, i32 12), align 8
  %115 = load i64, i64* %4, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  ret i32 0
}

declare dso_local i32 @read(i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
