; ModuleID = '/home/carl/AnghaBench/git/extr_upload-pack.c_parse_have.c'
source_filename = "/home/carl/AnghaBench/git/extr_upload-pack.c_parse_have.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.object_id = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"have \00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"git upload-pack: expected SHA1 object, got '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.oid_array*)* @parse_have to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_have(i8* %0, %struct.oid_array* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.oid_array*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id, align 4
  store i8* %0, i8** %4, align 8
  store %struct.oid_array* %1, %struct.oid_array** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @skip_prefix(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @get_oid_hex(i8* %12, %struct.object_id* %7)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @die(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load %struct.oid_array*, %struct.oid_array** %5, align 8
  %20 = call i32 @oid_array_append(%struct.oid_array* %19, %struct.object_id* %7)
  store i32 1, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @oid_array_append(%struct.oid_array*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
