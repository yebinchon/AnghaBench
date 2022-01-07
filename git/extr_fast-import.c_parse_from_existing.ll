; ModuleID = '/home/carl/AnghaBench/git/extr_fast-import.c_parse_from_existing.c'
source_filename = "/home/carl/AnghaBench/git/extr_fast-import.c_parse_from_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@commit_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch*)* @parse_from_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_from_existing(%struct.branch* %0) #0 {
  %2 = alloca %struct.branch*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.branch* %0, %struct.branch** %2, align 8
  %5 = load %struct.branch*, %struct.branch** %2, align 8
  %6 = getelementptr inbounds %struct.branch, %struct.branch* %5, i32 0, i32 0
  %7 = call i64 @is_null_oid(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.branch*, %struct.branch** %2, align 8
  %11 = getelementptr inbounds %struct.branch, %struct.branch* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @oidclr(i32* %15)
  %17 = load %struct.branch*, %struct.branch** %2, align 8
  %18 = getelementptr inbounds %struct.branch, %struct.branch* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @oidclr(i32* %22)
  br label %38

24:                                               ; preds = %1
  %25 = load i32, i32* @the_repository, align 4
  %26 = load %struct.branch*, %struct.branch** %2, align 8
  %27 = getelementptr inbounds %struct.branch, %struct.branch* %26, i32 0, i32 0
  %28 = load i32, i32* @commit_type, align 4
  %29 = load %struct.branch*, %struct.branch** %2, align 8
  %30 = getelementptr inbounds %struct.branch, %struct.branch* %29, i32 0, i32 0
  %31 = call i8* @read_object_with_reference(i32 %25, i32* %27, i32 %28, i64* %3, i32* %30)
  store i8* %31, i8** %4, align 8
  %32 = load %struct.branch*, %struct.branch** %2, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @parse_from_commit(%struct.branch* %32, i8* %33, i64 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @free(i8* %36)
  br label %38

38:                                               ; preds = %24, %9
  ret void
}

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @oidclr(i32*) #1

declare dso_local i8* @read_object_with_reference(i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @parse_from_commit(%struct.branch*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
