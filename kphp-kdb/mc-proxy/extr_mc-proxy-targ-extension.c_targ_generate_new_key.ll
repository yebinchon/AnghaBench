; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_targ_generate_new_key.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-targ-extension.c_targ_generate_new_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ_gather_extra = type { i64, i32, i32, i32, i32 }

@TARG_GATHER_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*)* @targ_generate_new_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @targ_generate_new_key(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.targ_gather_extra*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.targ_gather_extra*
  store %struct.targ_gather_extra* %12, %struct.targ_gather_extra** %9, align 8
  %13 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %14 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TARG_GATHER_MAGIC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  store i32 0, i32* %10, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %26 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @memcpy(i8* %23, i8* %24, i32 %27)
  %29 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %30 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %39 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %42 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @regenerate_search_extra(i8* %37, i32 %40, i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %55 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %61 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = call i32 @memcpy(i8* %52, i8* %58, i32 %63)
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.targ_gather_extra*, %struct.targ_gather_extra** %9, align 8
  %67 = getelementptr inbounds %struct.targ_gather_extra, %struct.targ_gather_extra* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @regenerate_search_extra(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
