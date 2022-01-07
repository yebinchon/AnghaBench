; ModuleID = '/home/carl/AnghaBench/git/extr_notes.c_add_non_note.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes.c_add_non_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_tree = type { %struct.non_note*, %struct.non_note* }
%struct.non_note = type { i8*, i32, %struct.non_note*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.notes_tree*, i8*, i32, i8*)* @add_non_note to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_non_note(%struct.notes_tree* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.notes_tree*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.non_note*, align 8
  %10 = alloca %struct.non_note*, align 8
  store %struct.notes_tree* %0, %struct.notes_tree** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %12 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %11, i32 0, i32 0
  %13 = load %struct.non_note*, %struct.non_note** %12, align 8
  store %struct.non_note* %13, %struct.non_note** %9, align 8
  %14 = call i64 @xmalloc(i32 32)
  %15 = inttoptr i64 %14 to %struct.non_note*
  store %struct.non_note* %15, %struct.non_note** %10, align 8
  %16 = load %struct.non_note*, %struct.non_note** %10, align 8
  %17 = getelementptr inbounds %struct.non_note, %struct.non_note* %16, i32 0, i32 2
  store %struct.non_note* null, %struct.non_note** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.non_note*, %struct.non_note** %10, align 8
  %20 = getelementptr inbounds %struct.non_note, %struct.non_note* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.non_note*, %struct.non_note** %10, align 8
  %23 = getelementptr inbounds %struct.non_note, %struct.non_note* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.non_note*, %struct.non_note** %10, align 8
  %25 = getelementptr inbounds %struct.non_note, %struct.non_note* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @hashcpy(i32 %27, i8* %28)
  %30 = load %struct.non_note*, %struct.non_note** %10, align 8
  %31 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %32 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %31, i32 0, i32 0
  store %struct.non_note* %30, %struct.non_note** %32, align 8
  %33 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %34 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %33, i32 0, i32 1
  %35 = load %struct.non_note*, %struct.non_note** %34, align 8
  %36 = icmp ne %struct.non_note* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %4
  %38 = load %struct.non_note*, %struct.non_note** %10, align 8
  %39 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %40 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %39, i32 0, i32 1
  store %struct.non_note* %38, %struct.non_note** %40, align 8
  br label %127

41:                                               ; preds = %4
  %42 = load %struct.non_note*, %struct.non_note** %9, align 8
  %43 = load %struct.non_note*, %struct.non_note** %10, align 8
  %44 = call i64 @non_note_cmp(%struct.non_note* %42, %struct.non_note* %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %68

47:                                               ; preds = %41
  %48 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %49 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %48, i32 0, i32 1
  %50 = load %struct.non_note*, %struct.non_note** %49, align 8
  %51 = load %struct.non_note*, %struct.non_note** %10, align 8
  %52 = call i64 @non_note_cmp(%struct.non_note* %50, %struct.non_note* %51)
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %56 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %55, i32 0, i32 1
  %57 = load %struct.non_note*, %struct.non_note** %56, align 8
  store %struct.non_note* %57, %struct.non_note** %9, align 8
  br label %67

58:                                               ; preds = %47
  %59 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %60 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %59, i32 0, i32 1
  %61 = load %struct.non_note*, %struct.non_note** %60, align 8
  %62 = load %struct.non_note*, %struct.non_note** %10, align 8
  %63 = getelementptr inbounds %struct.non_note, %struct.non_note* %62, i32 0, i32 2
  store %struct.non_note* %61, %struct.non_note** %63, align 8
  %64 = load %struct.non_note*, %struct.non_note** %10, align 8
  %65 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %66 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %65, i32 0, i32 1
  store %struct.non_note* %64, %struct.non_note** %66, align 8
  br label %127

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %83, %68
  %70 = load %struct.non_note*, %struct.non_note** %9, align 8
  %71 = getelementptr inbounds %struct.non_note, %struct.non_note* %70, i32 0, i32 2
  %72 = load %struct.non_note*, %struct.non_note** %71, align 8
  %73 = icmp ne %struct.non_note* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.non_note*, %struct.non_note** %9, align 8
  %76 = getelementptr inbounds %struct.non_note, %struct.non_note* %75, i32 0, i32 2
  %77 = load %struct.non_note*, %struct.non_note** %76, align 8
  %78 = load %struct.non_note*, %struct.non_note** %10, align 8
  %79 = call i64 @non_note_cmp(%struct.non_note* %77, %struct.non_note* %78)
  %80 = icmp sle i64 %79, 0
  br label %81

81:                                               ; preds = %74, %69
  %82 = phi i1 [ false, %69 ], [ %80, %74 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = load %struct.non_note*, %struct.non_note** %9, align 8
  %85 = getelementptr inbounds %struct.non_note, %struct.non_note* %84, i32 0, i32 2
  %86 = load %struct.non_note*, %struct.non_note** %85, align 8
  store %struct.non_note* %86, %struct.non_note** %9, align 8
  br label %69

87:                                               ; preds = %81
  %88 = load %struct.non_note*, %struct.non_note** %9, align 8
  %89 = load %struct.non_note*, %struct.non_note** %10, align 8
  %90 = call i64 @non_note_cmp(%struct.non_note* %88, %struct.non_note* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %87
  %93 = load %struct.non_note*, %struct.non_note** %9, align 8
  %94 = getelementptr inbounds %struct.non_note, %struct.non_note* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.non_note*, %struct.non_note** %10, align 8
  %97 = getelementptr inbounds %struct.non_note, %struct.non_note* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %95, i8* %98)
  %100 = icmp eq i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @assert(i32 %101)
  %103 = load %struct.non_note*, %struct.non_note** %10, align 8
  %104 = getelementptr inbounds %struct.non_note, %struct.non_note* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.non_note*, %struct.non_note** %9, align 8
  %107 = getelementptr inbounds %struct.non_note, %struct.non_note* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 8
  %108 = load %struct.non_note*, %struct.non_note** %9, align 8
  %109 = getelementptr inbounds %struct.non_note, %struct.non_note* %108, i32 0, i32 3
  %110 = load %struct.non_note*, %struct.non_note** %10, align 8
  %111 = getelementptr inbounds %struct.non_note, %struct.non_note* %110, i32 0, i32 3
  %112 = call i32 @oidcpy(%struct.TYPE_3__* %109, %struct.TYPE_3__* %111)
  %113 = load %struct.non_note*, %struct.non_note** %10, align 8
  %114 = call i32 @free(%struct.non_note* %113)
  %115 = load %struct.non_note*, %struct.non_note** %9, align 8
  %116 = load %struct.notes_tree*, %struct.notes_tree** %5, align 8
  %117 = getelementptr inbounds %struct.notes_tree, %struct.notes_tree* %116, i32 0, i32 0
  store %struct.non_note* %115, %struct.non_note** %117, align 8
  br label %127

118:                                              ; preds = %87
  %119 = load %struct.non_note*, %struct.non_note** %9, align 8
  %120 = getelementptr inbounds %struct.non_note, %struct.non_note* %119, i32 0, i32 2
  %121 = load %struct.non_note*, %struct.non_note** %120, align 8
  %122 = load %struct.non_note*, %struct.non_note** %10, align 8
  %123 = getelementptr inbounds %struct.non_note, %struct.non_note* %122, i32 0, i32 2
  store %struct.non_note* %121, %struct.non_note** %123, align 8
  %124 = load %struct.non_note*, %struct.non_note** %10, align 8
  %125 = load %struct.non_note*, %struct.non_note** %9, align 8
  %126 = getelementptr inbounds %struct.non_note, %struct.non_note* %125, i32 0, i32 2
  store %struct.non_note* %124, %struct.non_note** %126, align 8
  br label %127

127:                                              ; preds = %118, %92, %58, %37
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @hashcpy(i32, i8*) #1

declare dso_local i64 @non_note_cmp(%struct.non_note*, %struct.non_note*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @oidcpy(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct.non_note*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
