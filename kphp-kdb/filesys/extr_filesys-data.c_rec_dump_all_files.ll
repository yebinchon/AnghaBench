; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_rec_dump_all_files.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_rec_dump_all_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i8*, i64, %struct.filesys_directory_node*, %struct.filesys_directory_node* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filesys_directory_node*, i32)* @rec_dump_all_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rec_dump_all_files(%struct.filesys_directory_node* %0, i32 %1) #0 {
  %3 = alloca %struct.filesys_directory_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.filesys_directory_node*, align 8
  store %struct.filesys_directory_node* %0, %struct.filesys_directory_node** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %15, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 2, %9
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %7

18:                                               ; preds = %7
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %3, align 8
  %21 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %3, align 8
  %25 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %43

29:                                               ; preds = %18
  %30 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %3, align 8
  %31 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %30, i32 0, i32 3
  %32 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %31, align 8
  store %struct.filesys_directory_node* %32, %struct.filesys_directory_node** %6, align 8
  br label %33

33:                                               ; preds = %36, %29
  %34 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %35 = icmp ne %struct.filesys_directory_node* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  call void @rec_dump_all_files(%struct.filesys_directory_node* %37, i32 %39)
  %40 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %6, align 8
  %41 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %40, i32 0, i32 2
  %42 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %41, align 8
  store %struct.filesys_directory_node* %42, %struct.filesys_directory_node** %6, align 8
  br label %33

43:                                               ; preds = %28, %33
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
