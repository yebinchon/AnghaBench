; ModuleID = '/home/carl/AnghaBench/git/extr_sha1-file.c_write_object_file.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1-file.c_write_object_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }

@MAX_HEADER_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_object_file(i8* %0, i64 %1, i8* %2, %struct.object_id* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.object_id*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.object_id* %3, %struct.object_id** %9, align 8
  %14 = load i32, i32* @MAX_HEADER_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = trunc i64 %15 to i32
  store i32 %18, i32* %12, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.object_id*, %struct.object_id** %9, align 8
  %23 = call i32 @write_object_file_prepare(i8* %19, i64 %20, i8* %21, %struct.object_id* %22, i8* %17, i32* %12)
  %24 = load %struct.object_id*, %struct.object_id** %9, align 8
  %25 = call i64 @freshen_packed_object(%struct.object_id* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load %struct.object_id*, %struct.object_id** %9, align 8
  %29 = call i64 @freshen_loose_object(%struct.object_id* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %38

32:                                               ; preds = %27
  %33 = load %struct.object_id*, %struct.object_id** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @write_loose_object(%struct.object_id* %33, i8* %17, i32 %34, i8* %35, i64 %36, i32 0)
  store i32 %37, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %38

38:                                               ; preds = %32, %31
  %39 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %39)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_object_file_prepare(i8*, i64, i8*, %struct.object_id*, i8*, i32*) #2

declare dso_local i64 @freshen_packed_object(%struct.object_id*) #2

declare dso_local i64 @freshen_loose_object(%struct.object_id*) #2

declare dso_local i32 @write_loose_object(%struct.object_id*, i8*, i32, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
