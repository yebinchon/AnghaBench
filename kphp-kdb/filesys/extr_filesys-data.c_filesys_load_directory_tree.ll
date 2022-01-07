; ModuleID = '/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_load_directory_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/filesys/extr_filesys-data.c_filesys_load_directory_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filesys_directory_node = type { i32, i32, i32, i32, i32, i32*, %struct.filesys_directory_node*, %struct.filesys_directory_node*, %struct.filesys_directory_node* }

@tot_directory_nodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"load_index: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filesys_directory_node* (%struct.filesys_directory_node*)* @filesys_load_directory_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filesys_directory_node* @filesys_load_directory_tree(%struct.filesys_directory_node* %0) #0 {
  %2 = alloca %struct.filesys_directory_node*, align 8
  %3 = alloca %struct.filesys_directory_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.filesys_directory_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.filesys_directory_node*, align 8
  %8 = alloca %struct.filesys_directory_node*, align 8
  store %struct.filesys_directory_node* %0, %struct.filesys_directory_node** %3, align 8
  %9 = call i32 @bread(i32* %4, i32 4)
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, -2
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp eq i64 %15, -2
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %2, align 8
  br label %90

18:                                               ; preds = %1
  %19 = load i32, i32* @tot_directory_nodes, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @tot_directory_nodes, align 4
  %21 = call %struct.filesys_directory_node* @zmalloc0(i32 56)
  store %struct.filesys_directory_node* %21, %struct.filesys_directory_node** %5, align 8
  %22 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %23 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %22, i32 0, i32 0
  %24 = call i32 @bread(i32* %23, i32 4)
  %25 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %26 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %25, i32 0, i32 1
  %27 = call i32 @bread(i32* %26, i32 4)
  %28 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %29 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %28, i32 0, i32 2
  %30 = call i32 @bread(i32* %29, i32 4)
  %31 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %32 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %31, i32 0, i32 3
  %33 = call i32 @bread(i32* %32, i32 4)
  %34 = call i32 @bread(i32* %6, i32 4)
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %37 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %3, align 8
  %39 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %40 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %39, i32 0, i32 8
  store %struct.filesys_directory_node* %38, %struct.filesys_directory_node** %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32* @zmalloc(i32 %42)
  %44 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %45 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %44, i32 0, i32 5
  store i32* %43, i32** %45, align 8
  %46 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %47 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %46, i32 0, i32 7
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %47, align 8
  store %struct.filesys_directory_node* null, %struct.filesys_directory_node** %7, align 8
  %48 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %49 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @bread(i32* %50, i32 %51)
  %53 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %54 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 0, i32* %58, align 4
  %59 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %60 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %61)
  %63 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %64 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %18
  br label %68

68:                                               ; preds = %86, %67
  %69 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %70 = call %struct.filesys_directory_node* @filesys_load_directory_tree(%struct.filesys_directory_node* %69)
  store %struct.filesys_directory_node* %70, %struct.filesys_directory_node** %8, align 8
  %71 = icmp ne %struct.filesys_directory_node* %70, null
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %74 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %73, i32 0, i32 7
  %75 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %74, align 8
  %76 = icmp eq %struct.filesys_directory_node* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %8, align 8
  store %struct.filesys_directory_node* %78, %struct.filesys_directory_node** %7, align 8
  %79 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  %80 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %79, i32 0, i32 7
  store %struct.filesys_directory_node* %78, %struct.filesys_directory_node** %80, align 8
  br label %86

81:                                               ; preds = %72
  %82 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %8, align 8
  %83 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %7, align 8
  %84 = getelementptr inbounds %struct.filesys_directory_node, %struct.filesys_directory_node* %83, i32 0, i32 6
  store %struct.filesys_directory_node* %82, %struct.filesys_directory_node** %84, align 8
  %85 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %8, align 8
  store %struct.filesys_directory_node* %85, %struct.filesys_directory_node** %7, align 8
  br label %86

86:                                               ; preds = %81, %77
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %18
  %89 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %5, align 8
  store %struct.filesys_directory_node* %89, %struct.filesys_directory_node** %2, align 8
  br label %90

90:                                               ; preds = %88, %17
  %91 = load %struct.filesys_directory_node*, %struct.filesys_directory_node** %2, align 8
  ret %struct.filesys_directory_node* %91
}

declare dso_local i32 @bread(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.filesys_directory_node* @zmalloc0(i32) #1

declare dso_local i32* @zmalloc(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
