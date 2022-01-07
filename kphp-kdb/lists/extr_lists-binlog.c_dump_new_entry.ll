; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-binlog.c_dump_new_entry.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-binlog.c_dump_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lev_new_entry = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s+%d\09\00", align 1
@out = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_new_entry(i32* %0, i8* %1, i32 %2, %struct.lev_new_entry* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lev_new_entry*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.lev_new_entry* %3, %struct.lev_new_entry** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = icmp sle i32 %12, 255
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ false, %4 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21)
  %23 = load i32, i32* @out, align 4
  %24 = load %struct.lev_new_entry*, %struct.lev_new_entry** %8, align 8
  %25 = getelementptr inbounds %struct.lev_new_entry, %struct.lev_new_entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dump_list_id(i32 %23, i32 %26)
  %28 = load i32, i32* @out, align 4
  %29 = call i32 @fputc(i8 signext 9, i32 %28)
  %30 = load i32, i32* @out, align 4
  %31 = load %struct.lev_new_entry*, %struct.lev_new_entry** %8, align 8
  %32 = getelementptr inbounds %struct.lev_new_entry, %struct.lev_new_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dump_object_id(i32 %30, i32 %33)
  %35 = load i32, i32* @out, align 4
  %36 = call i32 @fputc(i8 signext 9, i32 %35)
  %37 = load i32, i32* @out, align 4
  %38 = load %struct.lev_new_entry*, %struct.lev_new_entry** %8, align 8
  %39 = getelementptr inbounds %struct.lev_new_entry, %struct.lev_new_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dump_list_id(i32, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @dump_object_id(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
