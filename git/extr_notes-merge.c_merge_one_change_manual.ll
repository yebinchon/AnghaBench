; ModuleID = '/home/carl/AnghaBench/git/extr_notes-merge.c_merge_one_change_manual.c'
source_filename = "/home/carl/AnghaBench/git/extr_notes-merge.c_merge_one_change_manual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notes_merge_options = type { i8*, i8*, i32, i32, i32 }
%struct.notes_merge_pair = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.notes_tree = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"local version\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"remote version\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"\09\09\09merge_one_change_manual(obj = %.7s, base = %.7s, local = %.7s, remote = %.7s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\0A\0AConflicts:\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Auto-merging notes for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [111 x i8] c"CONFLICT (delete/modify): Notes for object %s deleted in %s and modified in %s. Version from %s left in tree.\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"add/add\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"CONFLICT (%s): Merge conflict in notes for object %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"\09\09\09removing from partial merge result\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notes_merge_options*, %struct.notes_merge_pair*, %struct.notes_tree*)* @merge_one_change_manual to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_one_change_manual(%struct.notes_merge_options* %0, %struct.notes_merge_pair* %1, %struct.notes_tree* %2) #0 {
  %4 = alloca %struct.notes_merge_options*, align 8
  %5 = alloca %struct.notes_merge_pair*, align 8
  %6 = alloca %struct.notes_tree*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.notes_merge_options* %0, %struct.notes_merge_options** %4, align 8
  store %struct.notes_merge_pair* %1, %struct.notes_merge_pair** %5, align 8
  store %struct.notes_tree* %2, %struct.notes_tree** %6, align 8
  %10 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %11 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %16 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi i8* [ %17, %14 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %18 ]
  store i8* %20, i8** %7, align 8
  %21 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %22 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %27 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi i8* [ %28, %25 ], [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %29 ]
  store i8* %31, i8** %8, align 8
  %32 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %33 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %32, i32 0, i32 0
  %34 = call i8* @oid_to_hex(%struct.TYPE_5__* %33)
  %35 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %36 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %35, i32 0, i32 3
  %37 = call i8* @oid_to_hex(%struct.TYPE_5__* %36)
  %38 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %39 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %38, i32 0, i32 2
  %40 = call i8* @oid_to_hex(%struct.TYPE_5__* %39)
  %41 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %42 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %41, i32 0, i32 1
  %43 = call i8* @oid_to_hex(%struct.TYPE_5__* %42)
  %44 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %37, i8* %40, i8* %43)
  %45 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %46 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %30
  %50 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %51 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %50, i32 0, i32 3
  %52 = call i32 @strbuf_addstr(i32* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %30
  %54 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %55 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %54, i32 0, i32 3
  %56 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %57 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %56, i32 0, i32 0
  %58 = call i8* @oid_to_hex(%struct.TYPE_5__* %57)
  %59 = call i32 @strbuf_addf(i32* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  %60 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %61 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %62, 2
  br i1 %63, label %64, label %69

64:                                               ; preds = %53
  %65 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %66 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %65, i32 0, i32 0
  %67 = call i8* @oid_to_hex(%struct.TYPE_5__* %66)
  %68 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %64, %53
  %70 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %71 = call i32 @check_notes_merge_worktree(%struct.notes_merge_options* %70)
  %72 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %73 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %72, i32 0, i32 2
  %74 = call i64 @is_null_oid(%struct.TYPE_5__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %69
  %77 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %78 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %77, i32 0, i32 1
  %79 = call i64 @is_null_oid(%struct.TYPE_5__* %78)
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %85 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %76
  %89 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %90 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %89, i32 0, i32 0
  %91 = call i8* @oid_to_hex(%struct.TYPE_5__* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.6, i64 0, i64 0), i8* %91, i8* %92, i8* %93, i8* %94)
  br label %96

96:                                               ; preds = %88, %76
  %97 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %98 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %97, i32 0, i32 0
  %99 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %100 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %99, i32 0, i32 1
  %101 = call i32 @write_note_to_worktree(%struct.TYPE_5__* %98, %struct.TYPE_5__* %100)
  br label %169

102:                                              ; preds = %69
  %103 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %104 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %103, i32 0, i32 1
  %105 = call i64 @is_null_oid(%struct.TYPE_5__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %133

107:                                              ; preds = %102
  %108 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %109 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %108, i32 0, i32 2
  %110 = call i64 @is_null_oid(%struct.TYPE_5__* %109)
  %111 = icmp ne i64 %110, 0
  %112 = xor i1 %111, true
  %113 = zext i1 %112 to i32
  %114 = call i32 @assert(i32 %113)
  %115 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %116 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %117, 1
  br i1 %118, label %119, label %127

119:                                              ; preds = %107
  %120 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %121 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %120, i32 0, i32 0
  %122 = call i8* @oid_to_hex(%struct.TYPE_5__* %121)
  %123 = load i8*, i8** %8, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.6, i64 0, i64 0), i8* %122, i8* %123, i8* %124, i8* %125)
  br label %127

127:                                              ; preds = %119, %107
  %128 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %129 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %128, i32 0, i32 0
  %130 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %131 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %130, i32 0, i32 2
  %132 = call i32 @write_note_to_worktree(%struct.TYPE_5__* %129, %struct.TYPE_5__* %131)
  br label %168

133:                                              ; preds = %102
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  %134 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %135 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %134, i32 0, i32 3
  %136 = call i64 @is_null_oid(%struct.TYPE_5__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %139

139:                                              ; preds = %138, %133
  %140 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %141 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %140, i32 0, i32 2
  %142 = call i64 @is_null_oid(%struct.TYPE_5__* %141)
  %143 = icmp ne i64 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = call i32 @assert(i32 %145)
  %147 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %148 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %147, i32 0, i32 1
  %149 = call i64 @is_null_oid(%struct.TYPE_5__* %148)
  %150 = icmp ne i64 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %155 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = icmp sge i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %139
  %159 = load i8*, i8** %9, align 8
  %160 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %161 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %160, i32 0, i32 0
  %162 = call i8* @oid_to_hex(%struct.TYPE_5__* %161)
  %163 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i8* %159, i8* %162)
  br label %164

164:                                              ; preds = %158, %139
  %165 = load %struct.notes_merge_options*, %struct.notes_merge_options** %4, align 8
  %166 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %167 = call i32 @ll_merge_in_worktree(%struct.notes_merge_options* %165, %struct.notes_merge_pair* %166)
  br label %168

168:                                              ; preds = %164, %127
  br label %169

169:                                              ; preds = %168, %96
  %170 = call i32 (i8*, ...) @trace_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %171 = load %struct.notes_tree*, %struct.notes_tree** %6, align 8
  %172 = load %struct.notes_merge_pair*, %struct.notes_merge_pair** %5, align 8
  %173 = getelementptr inbounds %struct.notes_merge_pair, %struct.notes_merge_pair* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @remove_note(%struct.notes_tree* %171, i32 %175)
  ret i32 1
}

declare dso_local i32 @trace_printf(i8*, ...) #1

declare dso_local i8* @oid_to_hex(%struct.TYPE_5__*) #1

declare dso_local i32 @strbuf_addstr(i32*, i8*) #1

declare dso_local i32 @strbuf_addf(i32*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @check_notes_merge_worktree(%struct.notes_merge_options*) #1

declare dso_local i64 @is_null_oid(%struct.TYPE_5__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @write_note_to_worktree(%struct.TYPE_5__*, %struct.TYPE_5__*) #1

declare dso_local i32 @ll_merge_in_worktree(%struct.notes_merge_options*, %struct.notes_merge_pair*) #1

declare dso_local i32 @remove_note(%struct.notes_tree*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
