; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_write_packed_entry.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_write_packed_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"^%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.object_id*, %struct.object_id*)* @write_packed_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_packed_entry(i32* %0, i8* %1, %struct.object_id* %2, %struct.object_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca %struct.object_id*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.object_id* %2, %struct.object_id** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.object_id*, %struct.object_id** %8, align 8
  %12 = call i8* @oid_to_hex(%struct.object_id* %11)
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 (i32*, i8*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load %struct.object_id*, %struct.object_id** %9, align 8
  %18 = icmp ne %struct.object_id* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.object_id*, %struct.object_id** %9, align 8
  %22 = call i8* @oid_to_hex(%struct.object_id* %21)
  %23 = call i64 (i32*, i8*, i8*, ...) @fprintf(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %4
  store i32 -1, i32* %5, align 4
  br label %27

26:                                               ; preds = %19, %16
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i64 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
