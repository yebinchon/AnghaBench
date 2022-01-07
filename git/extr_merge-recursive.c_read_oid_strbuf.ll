; ModuleID = '/home/carl/AnghaBench/git/extr_merge-recursive.c_read_oid_strbuf.c'
source_filename = "/home/carl/AnghaBench/git/extr_merge-recursive.c_read_oid_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_options = type { i32 }
%struct.object_id = type { i32 }
%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"cannot read object %s\00", align 1
@OBJ_BLOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"object %s is not a blob\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.merge_options*, %struct.object_id*, %struct.strbuf*)* @read_oid_strbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_oid_strbuf(%struct.merge_options* %0, %struct.object_id* %1, %struct.strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.merge_options*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.strbuf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.merge_options* %0, %struct.merge_options** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.strbuf* %2, %struct.strbuf** %7, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call i8* @read_object_file(%struct.object_id* %11, i32* %9, i64* %10)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %17 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.object_id*, %struct.object_id** %6, align 8
  %19 = call i32 @oid_to_hex(%struct.object_id* %18)
  %20 = call i32 @err(%struct.merge_options* %16, i32 %17, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @OBJ_BLOB, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @free(i8* %26)
  %28 = load %struct.merge_options*, %struct.merge_options** %5, align 8
  %29 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.object_id*, %struct.object_id** %6, align 8
  %31 = call i32 @oid_to_hex(%struct.object_id* %30)
  %32 = call i32 @err(%struct.merge_options* %28, i32 %29, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.strbuf*, %struct.strbuf** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  %39 = call i32 @strbuf_attach(%struct.strbuf* %34, i8* %35, i64 %36, i64 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %33, %25, %15
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @err(%struct.merge_options*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strbuf_attach(%struct.strbuf*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
