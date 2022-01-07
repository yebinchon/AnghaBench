; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_resolve_ref.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-ref-store.c_cmd_resolve_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"refname\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"resolve-flags\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s %s 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, i8**)* @cmd_resolve_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_resolve_ref(%struct.ref_store* %0, i8** %1) #0 {
  %3 = alloca %struct.ref_store*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.object_id, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i32 1
  store i8** %11, i8*** %4, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = ptrtoint i8* %12 to i32
  %14 = call i8* @notnull(i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i32 1
  store i8** %16, i8*** %4, align 8
  %17 = load i8*, i8** %15, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = call i32 @arg_flags(i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ref_store*, %struct.ref_store** %3, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @refs_resolve_ref_unsafe(%struct.ref_store* %20, i8* %21, i32 %22, %struct.object_id* %5, i32* %8)
  store i8* %23, i8** %9, align 8
  %24 = call i8* @oid_to_hex(%struct.object_id* %5)
  %25 = load i8*, i8** %9, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i8*, i8** %9, align 8
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i8* [ %28, %27 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), %29 ]
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* %31, i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  ret i32 %37
}

declare dso_local i8* @notnull(i32, i8*) #1

declare dso_local i32 @arg_flags(i32, i8*) #1

declare dso_local i8* @refs_resolve_ref_unsafe(%struct.ref_store*, i8*, i32, %struct.object_id*, i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @oid_to_hex(%struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
