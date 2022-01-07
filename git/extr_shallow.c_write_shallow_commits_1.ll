; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_write_shallow_commits_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_write_shallow_commits_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.oid_array = type { i32, i64 }
%struct.write_shallow_data = type { i32, i32, i32, %struct.strbuf* }

@write_one_shallow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i32, %struct.oid_array*, i32)* @write_shallow_commits_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_shallow_commits_1(%struct.strbuf* %0, i32 %1, %struct.oid_array* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.oid_array*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.write_shallow_data, align 8
  %11 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.oid_array* %2, %struct.oid_array** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %13 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %10, i32 0, i32 3
  store %struct.strbuf* %12, %struct.strbuf** %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %10, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %10, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @write_one_shallow, align 4
  %20 = call i32 @for_each_commit_graft(i32 %19, %struct.write_shallow_data* %10)
  %21 = load %struct.oid_array*, %struct.oid_array** %8, align 8
  %22 = icmp ne %struct.oid_array* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %10, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  br label %54

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.oid_array*, %struct.oid_array** %8, align 8
  %30 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %27
  %34 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %35 = load %struct.oid_array*, %struct.oid_array** %8, align 8
  %36 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @oid_to_hex(i64 %40)
  %42 = call i32 @strbuf_addstr(%struct.strbuf* %34, i32 %41)
  %43 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %44 = call i32 @strbuf_addch(%struct.strbuf* %43, i8 signext 10)
  %45 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %27

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %10, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %23
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @for_each_commit_graft(i32, %struct.write_shallow_data*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i32) #1

declare dso_local i32 @oid_to_hex(i64) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
