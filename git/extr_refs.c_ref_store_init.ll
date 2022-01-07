; ModuleID = '/home/carl/AnghaBench/git/extr_refs.c_ref_store_init.c'
source_filename = "/home/carl/AnghaBench/git/extr_refs.c_ref_store_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.ref_storage_be = type { %struct.ref_store* (i8*, i32)* }

@.str = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"reference backend %s is unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref_store* (i8*, i32)* @ref_store_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref_store* @ref_store_init(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ref_storage_be*, align 8
  %7 = alloca %struct.ref_store*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.ref_storage_be* @find_ref_storage_backend(i8* %8)
  store %struct.ref_storage_be* %9, %struct.ref_storage_be** %6, align 8
  %10 = load %struct.ref_storage_be*, %struct.ref_storage_be** %6, align 8
  %11 = icmp ne %struct.ref_storage_be* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.ref_storage_be*, %struct.ref_storage_be** %6, align 8
  %17 = getelementptr inbounds %struct.ref_storage_be, %struct.ref_storage_be* %16, i32 0, i32 0
  %18 = load %struct.ref_store* (i8*, i32)*, %struct.ref_store* (i8*, i32)** %17, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.ref_store* %18(i8* %19, i32 %20)
  store %struct.ref_store* %21, %struct.ref_store** %7, align 8
  %22 = load %struct.ref_store*, %struct.ref_store** %7, align 8
  ret %struct.ref_store* %22
}

declare dso_local %struct.ref_storage_be* @find_ref_storage_backend(i8*) #1

declare dso_local i32 @BUG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
