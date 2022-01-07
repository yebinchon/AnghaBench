; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_verify_notes_filepair.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_verify_notes_filepair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.diff_filepair*, %struct.object_id*)* @verify_notes_filepair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_notes_filepair(%struct.diff_filepair* %0, %struct.object_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.diff_filepair*, align 8
  %5 = alloca %struct.object_id*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %6 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %7 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %55 [
    i32 128, label %9
    i32 130, label %41
    i32 129, label %48
  ]

9:                                                ; preds = %2
  %10 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %11 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %16 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %14, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %24 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @is_null_oid(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %33 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @is_null_oid(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %56

41:                                               ; preds = %2
  %42 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %43 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @is_null_oid(i32* %45)
  %47 = call i32 @assert(i32 %46)
  br label %56

48:                                               ; preds = %2
  %49 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %50 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %49, i32 0, i32 2
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = call i32 @is_null_oid(i32* %52)
  %54 = call i32 @assert(i32 %53)
  br label %56

55:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

56:                                               ; preds = %48, %41, %9
  %57 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %58 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %63 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcmp(i32 %61, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.diff_filepair*, %struct.diff_filepair** %4, align 8
  %73 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.object_id*, %struct.object_id** %5, align 8
  %78 = call i32 @path_to_oid(i32 %76, %struct.object_id* %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %56, %55
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_null_oid(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @path_to_oid(i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
