; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_index.c_read_header.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_index.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_header = type { i8*, i8*, i8* }

@INDEX_HEADER_SIG = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"incorrect header signature\00", align 1
@INDEX_VERSION_NUMBER_LB = common dso_local global i8* null, align 8
@INDEX_VERSION_NUMBER_UB = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"incorrect header version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_header*, i8*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.index_header* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_header*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.index_header*, align 8
  store %struct.index_header* %0, %struct.index_header** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.index_header*
  store %struct.index_header* %8, %struct.index_header** %6, align 8
  %9 = load %struct.index_header*, %struct.index_header** %6, align 8
  %10 = getelementptr inbounds %struct.index_header, %struct.index_header* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @ntohl(i8* %11)
  %13 = load %struct.index_header*, %struct.index_header** %4, align 8
  %14 = getelementptr inbounds %struct.index_header, %struct.index_header* %13, i32 0, i32 2
  store i8* %12, i8** %14, align 8
  %15 = load %struct.index_header*, %struct.index_header** %4, align 8
  %16 = getelementptr inbounds %struct.index_header, %struct.index_header* %15, i32 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** @INDEX_HEADER_SIG, align 8
  %19 = icmp ne i8* %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 @index_error_invalid(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.index_header*, %struct.index_header** %6, align 8
  %24 = getelementptr inbounds %struct.index_header, %struct.index_header* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @ntohl(i8* %25)
  %27 = load %struct.index_header*, %struct.index_header** %4, align 8
  %28 = getelementptr inbounds %struct.index_header, %struct.index_header* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.index_header*, %struct.index_header** %4, align 8
  %30 = getelementptr inbounds %struct.index_header, %struct.index_header* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** @INDEX_VERSION_NUMBER_LB, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %22
  %35 = load %struct.index_header*, %struct.index_header** %4, align 8
  %36 = getelementptr inbounds %struct.index_header, %struct.index_header* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** @INDEX_VERSION_NUMBER_UB, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34, %22
  %41 = call i32 @index_error_invalid(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %34
  %43 = load %struct.index_header*, %struct.index_header** %6, align 8
  %44 = getelementptr inbounds %struct.index_header, %struct.index_header* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i8* @ntohl(i8* %45)
  %47 = load %struct.index_header*, %struct.index_header** %4, align 8
  %48 = getelementptr inbounds %struct.index_header, %struct.index_header* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %40, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i8* @ntohl(i8*) #1

declare dso_local i32 @index_error_invalid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
