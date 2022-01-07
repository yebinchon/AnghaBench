; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_receive_wanted_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_receive_wanted_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_reader = type { i64, i64 }
%struct.ref = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"wanted-refs\00", align 1
@PACKET_READ_NORMAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"expected wanted-ref, got '%s'\00", align 1
@cmp_name_ref = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"unexpected wanted-ref: '%s'\00", align 1
@PACKET_READ_DELIM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"error processing wanted refs: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_reader*, %struct.ref**, i32)* @receive_wanted_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_wanted_refs(%struct.packet_reader* %0, %struct.ref** %1, i32 %2) #0 {
  %4 = alloca %struct.packet_reader*, align 8
  %5 = alloca %struct.ref**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_id, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ref**, align 8
  store %struct.packet_reader* %0, %struct.packet_reader** %4, align 8
  store %struct.ref** %1, %struct.ref*** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %11 = call i32 @process_section_header(%struct.packet_reader* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

12:                                               ; preds = %49, %3
  %13 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %14 = call i64 @packet_reader_read(%struct.packet_reader* %13)
  %15 = load i64, i64* @PACKET_READ_NORMAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %12
  %18 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %19 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @parse_oid_hex(i64 %20, %struct.object_id* %7, i8** %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %8, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 32
  br i1 %28, label %29, label %35

29:                                               ; preds = %23, %17
  %30 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %32 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @die(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.ref**, %struct.ref*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @cmp_name_ref, align 4
  %40 = call %struct.ref** @bsearch(i8* %36, %struct.ref** %37, i32 %38, i32 8, i32 %39)
  store %struct.ref** %40, %struct.ref*** %9, align 8
  %41 = load %struct.ref**, %struct.ref*** %9, align 8
  %42 = icmp ne %struct.ref** %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %46 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @die(i32 %44, i64 %47)
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.ref**, %struct.ref*** %9, align 8
  %51 = load %struct.ref*, %struct.ref** %50, align 8
  %52 = getelementptr inbounds %struct.ref, %struct.ref* %51, i32 0, i32 0
  %53 = call i32 @oidcpy(i32* %52, %struct.object_id* %7)
  br label %12

54:                                               ; preds = %12
  %55 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %56 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PACKET_READ_DELIM, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.packet_reader*, %struct.packet_reader** %4, align 8
  %63 = getelementptr inbounds %struct.packet_reader, %struct.packet_reader* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @die(i32 %61, i64 %64)
  br label %66

66:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @process_section_header(%struct.packet_reader*, i8*, i32) #1

declare dso_local i64 @packet_reader_read(%struct.packet_reader*) #1

declare dso_local i64 @parse_oid_hex(i64, %struct.object_id*, i8**) #1

declare dso_local i32 @die(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.ref** @bsearch(i8*, %struct.ref**, i32, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
