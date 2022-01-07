; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_print_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_print_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.drbd_state = type { i64 }

@CS_DC_ROLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"role( %s -> %s ) \00", align 1
@CS_DC_PEER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"peer( %s -> %s ) \00", align 1
@CS_DC_CONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"conn( %s -> %s ) \00", align 1
@CS_DC_DISK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"disk( %s -> %s ) \00", align 1
@CS_DC_PDSK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"pdsk( %s -> %s ) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i64, i32)* @print_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @print_state_change(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %union.drbd_state, align 8
  %6 = alloca %union.drbd_state, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %5, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %6, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  store i8* %0, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  store i8 0, i8* %13, align 1
  %14 = bitcast %union.drbd_state* %6 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = bitcast %union.drbd_state* %5 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @CS_DC_ROLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast %union.drbd_state* %5 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @drbd_role_str(i64 %27)
  %29 = bitcast %union.drbd_state* %6 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @drbd_role_str(i64 %30)
  %32 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %31)
  %33 = load i8*, i8** %9, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %9, align 8
  br label %36

36:                                               ; preds = %24, %19, %4
  %37 = bitcast %union.drbd_state* %6 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %union.drbd_state* %5 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @CS_DC_PEER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast %union.drbd_state* %5 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @drbd_role_str(i64 %50)
  %52 = bitcast %union.drbd_state* %6 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = call i8* @drbd_role_str(i64 %53)
  %55 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %51, i8* %54)
  %56 = load i8*, i8** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %47, %42, %36
  %60 = bitcast %union.drbd_state* %6 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = bitcast %union.drbd_state* %5 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @CS_DC_CONN, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load i8*, i8** %9, align 8
  %72 = bitcast %union.drbd_state* %5 to i64*
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @drbd_conn_str(i64 %73)
  %75 = bitcast %union.drbd_state* %6 to i64*
  %76 = load i64, i64* %75, align 8
  %77 = call i8* @drbd_conn_str(i64 %76)
  %78 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %74, i8* %77)
  %79 = load i8*, i8** %9, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8* %81, i8** %9, align 8
  br label %82

82:                                               ; preds = %70, %65, %59
  %83 = bitcast %union.drbd_state* %6 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = bitcast %union.drbd_state* %5 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %84, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @CS_DC_DISK, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i8*, i8** %9, align 8
  %95 = bitcast %union.drbd_state* %5 to i64*
  %96 = load i64, i64* %95, align 8
  %97 = call i8* @drbd_disk_str(i64 %96)
  %98 = bitcast %union.drbd_state* %6 to i64*
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @drbd_disk_str(i64 %99)
  %101 = call i32 @sprintf(i8* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %97, i8* %100)
  %102 = load i8*, i8** %9, align 8
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8* %104, i8** %9, align 8
  br label %105

105:                                              ; preds = %93, %88, %82
  %106 = bitcast %union.drbd_state* %6 to i64*
  %107 = load i64, i64* %106, align 8
  %108 = bitcast %union.drbd_state* %5 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %107, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %105
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @CS_DC_PDSK, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load i8*, i8** %9, align 8
  %118 = bitcast %union.drbd_state* %5 to i64*
  %119 = load i64, i64* %118, align 8
  %120 = call i8* @drbd_disk_str(i64 %119)
  %121 = bitcast %union.drbd_state* %6 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @drbd_disk_str(i64 %122)
  %124 = call i32 @sprintf(i8* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %120, i8* %123)
  %125 = load i8*, i8** %9, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8* %127, i8** %9, align 8
  br label %128

128:                                              ; preds = %116, %111, %105
  %129 = load i8*, i8** %9, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  ret i64 %133
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i8* @drbd_role_str(i64) #1

declare dso_local i8* @drbd_conn_str(i64) #1

declare dso_local i8* @drbd_disk_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
