; ModuleID = '/home/carl/AnghaBench/git/extr_shallow.c_write_one_shallow.c'
source_filename = "/home/carl/AnghaBench/git/extr_shallow.c_write_one_shallow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_graft = type { i32, i32 }
%struct.write_shallow_data = type { i32, i32, i64, i32 }
%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@QUICK = common dso_local global i32 0, align 4
@SEEN_ONLY = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@SEEN = common dso_local global i32 0, align 4
@VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Removing %s from .git/shallow\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"shallow %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit_graft*, i8*)* @write_one_shallow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_one_shallow(%struct.commit_graft* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit_graft*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.write_shallow_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.commit_graft* %0, %struct.commit_graft** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.write_shallow_data*
  store %struct.write_shallow_data* %10, %struct.write_shallow_data** %6, align 8
  %11 = load %struct.commit_graft*, %struct.commit_graft** %4, align 8
  %12 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %11, i32 0, i32 1
  %13 = call i8* @oid_to_hex(i32* %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.commit_graft*, %struct.commit_graft** %4, align 8
  %15 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %97

19:                                               ; preds = %2
  %20 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %21 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @QUICK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.commit_graft*, %struct.commit_graft** %4, align 8
  %28 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %27, i32 0, i32 1
  %29 = call i32 @has_object_file(i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %97

32:                                               ; preds = %26
  br label %71

33:                                               ; preds = %19
  %34 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %35 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SEEN_ONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  %41 = load i32, i32* @the_repository, align 4
  %42 = load %struct.commit_graft*, %struct.commit_graft** %4, align 8
  %43 = getelementptr inbounds %struct.commit_graft, %struct.commit_graft* %42, i32 0, i32 1
  %44 = call %struct.commit* @lookup_commit(i32 %41, i32* %43)
  store %struct.commit* %44, %struct.commit** %8, align 8
  %45 = load %struct.commit*, %struct.commit** %8, align 8
  %46 = icmp ne %struct.commit* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %40
  %48 = load %struct.commit*, %struct.commit** %8, align 8
  %49 = getelementptr inbounds %struct.commit, %struct.commit* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SEEN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %47, %40
  %56 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %57 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VERBOSE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.commit*, %struct.commit** %8, align 8
  %64 = getelementptr inbounds %struct.commit, %struct.commit* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i8* @oid_to_hex(i32* %65)
  %67 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %62, %55
  store i32 0, i32* %3, align 4
  br label %97

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69, %33
  br label %71

71:                                               ; preds = %70, %32
  %72 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %73 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  %76 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %77 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %82 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @packet_buf_write(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  br label %96

86:                                               ; preds = %71
  %87 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %88 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @strbuf_addstr(i32 %89, i8* %90)
  %92 = load %struct.write_shallow_data*, %struct.write_shallow_data** %6, align 8
  %93 = getelementptr inbounds %struct.write_shallow_data, %struct.write_shallow_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strbuf_addch(i32 %94, i8 signext 10)
  br label %96

96:                                               ; preds = %86, %80
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %68, %31, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @has_object_file(i32*) #1

declare dso_local %struct.commit* @lookup_commit(i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @packet_buf_write(i32, i8*, i8*) #1

declare dso_local i32 @strbuf_addstr(i32, i8*) #1

declare dso_local i32 @strbuf_addch(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
