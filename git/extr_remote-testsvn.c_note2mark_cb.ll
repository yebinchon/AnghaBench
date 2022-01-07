; ModuleID = '/home/carl/AnghaBench/git/extr_remote-testsvn.c_note2mark_cb.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-testsvn.c_note2mark_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.rev_note = type { i32 }

@OBJ_BLOB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c":%d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, %struct.object_id*, i8*, i8*)* @note2mark_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note2mark_cb(%struct.object_id* %0, %struct.object_id* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rev_note, align 4
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load %struct.object_id*, %struct.object_id** %7, align 8
  %18 = call i8* @read_object_file(%struct.object_id* %17, i32* %13, i64* %12)
  store i8* %18, i8** %11, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i64, i64* %12, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @OBJ_BLOB, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %20, %4
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @free(i8* %28)
  store i32 1, i32* %5, align 4
  br label %45

30:                                               ; preds = %23
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @parse_rev_note(i8* %31, %struct.rev_note* %14)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 2, i32* %5, align 4
  br label %45

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds %struct.rev_note, %struct.rev_note* %14, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.object_id*, %struct.object_id** %6, align 8
  %40 = call i8* @oid_to_hex(%struct.object_id* %39)
  %41 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %40)
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i32 3, i32* %5, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43, %34, %27
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @parse_rev_note(i8*, %struct.rev_note*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i8*) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
